"""
BSD 2-Clause License

Copyright (c) 2019-2021, Linux-on-LiteX-VexRiscv Developers
Copyright (c) 2023 Victor Suarez Rovere <suarezvictor@gmail.com>
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice, this
   list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
   this list of conditions and the following disclaimer in the documentation
   and/or other materials provided with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
"""

from litex.soc.integration.doc import AutoDoc, ModuleDoc
from litex.soc.interconnect.csr import AutoCSR, CSRStatus, CSRStorage, CSRField

from migen import *
from migen.genlib import fifo

class LCDIF(Module, AutoCSR, AutoDoc):
    def __init__(self, pads, OFFX=45, OFFY=38):
        # All MIPI commands and data are 8-bits, with the exception of commands
        # to read and write memory to the LCD.
        # self.intro = ModuleDoc(title="LCDIF", body=""" """)
        self.cmd = CSRStorage(8, description="Send an 8-bit command to the LCD panel")
        self.data = CSRStorage(8, description="Send an 8-bit data byte to the LCD panel")
        self.ctrl = CSRStorage(6, fields=[
            CSRField("bl", description="Control the backlight state"),
            CSRField("reset", reset=1, description="Directly connected to the LCD ``reset`` line"),
            CSRField("cs", reset=1, description="Directly connected to the LCD ``cs`` line"),
            CSRField("fbstart", description="Switch to line renderer on the next VBL"),
            CSRField("fbena", description="Enable input to the line renderer"),
            CSRField("read", description="Set to ``1`` to read data from the device", pulse=True),
        ])
        self.status = CSRStatus(2, fields=[
            CSRField("fmark", description="Start-of-frame marker"),
            CSRField("id", description="LCD ID pin"),
        ])
        self.fb = CSRStorage(1, fields=[
            CSRField("line", description="???"),
            CSRField("frame", description="???")
        ])
        self.response = CSRStorage(8, description="Response data after reading from the device.")
        self.tpg = CSRStorage(1, description="Test pattern generators", fields=[
            CSRField("bluething", description="Kinda pretty blue display"),
            CSRField("rainbow", description="RGB pattern test"),
        ])

        self.dat = dat = Signal(16)
        self.hsync = hsync = Signal()
        self.vsync = vsync = Signal()
        self.en = en = Signal()

        self.submodules.wheel = Wheel()
        idx_counter = Signal(16)

        # Data pins
        d = TSTriple(len(pads.db))
        self.specials.d = d.get_tristate(pads.db)

        d_o  = Signal(len(pads.db))
        d_o_0 = Signal(len(pads.db))
        d_o_1 = Signal(len(pads.db))
        d_oe  = Signal()
        d_oe_0 = Signal()
        d_oe_1 = Signal()

        # D/CX (If 1, this is a data packet, otherwise it's a command packet)
        dcx = Signal()

        # RDX is 1 if this is a `read` packet (i.e. device-to-FPGA)
        rdx = Signal()

        # WRX is 1 if this is a `write` packet (i.e. device-to-FPGA)
        wrx = Signal()

        # TE is 1 on start-of-frame (?)
        te = Signal()

        dcx_0 = Signal()
        rdx_0 = Signal()
        dcx_1 = Signal()
        rdx_1 = Signal()
        wrx_0 = Signal()
        wrx_1 = Signal()

        idle = Signal()


        # make wr a DDRoutput
        self.specials += [
                Instance("ODDRX1F",
                    i_D0=idle,
                    i_D1=~wrx,
                    i_SCLK=ClockSignal(),
                    i_RST=ResetSignal(),
                    o_Q=pads.wr
                )
            ]
        

        self.comb += [
            self.status.fields.fmark.eq(pads.fmark),
            self.status.fields.id.eq(pads.id),
            pads.cs.eq(self.ctrl.fields.cs),
            pads.rst.eq(~self.ctrl.fields.reset),
            pads.blen.eq(self.ctrl.fields.bl),
            te.eq(pads.fmark),
        ]


        self.sync += [
            pads.rs.eq(dcx_1),
            pads.rd.eq(rdx_1),
            dcx_0.eq(dcx),
            rdx_0.eq(rdx),
            dcx_1.eq(dcx_0),
            rdx_1.eq(rdx_0),

            #pads.wr.eq(wrx_1),
            wrx_1.eq(wrx_0),
            wrx_0.eq(wrx),
            

            d.o.eq(d_o_1),
            d_o_1.eq(d_o_0),
            d_o_0.eq(d_o),
            d.oe.eq(d_oe_1),
            d_oe_1.eq(d_oe_0),
            d_oe_0.eq(d_oe),
        ]

        self.submodules.fsm = fsm = FSM()

        offset_counter = Signal(16)
        x = Signal(10)
        y = Signal(10)
        
        fsm.act("IDLE",
            wrx.eq(1),
            rdx.eq(1),
            dcx.eq(1),
            If(self.cmd.re,
                dcx.eq(0),
                wrx.eq(0),
                d_o.eq(self.cmd.storage),
                d_oe.eq(1),
                NextState("SEND_CMD"),
            ).Elif(self.data.re,
                wrx.eq(0),
                dcx.eq(1),
                d_o.eq(self.data.storage),
                d_oe.eq(1),
                NextState("SEND_DATA"),
            ).Elif(self.ctrl.fields.read,
                rdx.eq(0),
                dcx.eq(1),
                d_oe.eq(0),
                NextState("READ_DATA"),
            ).Elif(self.tpg.fields.bluething,
                wrx.eq(0),
                d_o.eq(0x2c),
                d_oe.eq(1),
                NextValue(idx_counter, 1),
                NextState("START_SEND_BLUETHING"),
            ).Elif(self.fb.fields.frame,
                wrx.eq(0),
                d_o.eq(0x2c),
                d_oe.eq(1),
                NextValue(idx_counter, 1),

                NextValue(x, 0),
                NextValue(y, 0),

                NextState("START_SEND_FRAME"),
            )
        )

        fsm.act("SEND_DATA",
            dcx.eq(1),
            wrx.eq(1),
            rdx.eq(1),
            d_o.eq(self.data.storage),
            d_oe.eq(1),
            NextState("IDLE"),
        )

        fsm.act("SEND_CMD",
            dcx.eq(0),
            wrx.eq(1),
            rdx.eq(1),
            d_o.eq(self.cmd.storage),
            d_oe.eq(1),
            NextState("IDLE"),
        )

        fsm.act("READ_DATA",
            dcx.eq(1),
            wrx.eq(1),
            rdx.eq(1),
            d_oe.eq(0),
            NextValue(self.response.storage, d.i),
            NextState("IDLE"),
        )


        frame_count = Signal(10)

        off_y = Signal(10)
        off_x = Signal(10)

        fsm.act("START_SEND_FRAME",
            wrx.eq(1),
            rdx.eq(1),
            dcx.eq(1),
            d_oe.eq(1),
            d_o.eq(dat),
            
                If(vsync,
                    NextValue(x, 0),
                    NextValue(y, 0),
                    NextValue(off_y, OFFY),
                    NextValue(off_x, OFFX),
                    NextValue(frame_count,frame_count + 1),
                    
                ),
                    If(hsync,
                        NextValue(x, 0),
                        NextValue(off_x, OFFX),
                        If(off_y,
                            NextValue(off_y, off_y - 1),
                        ).Else(
                            If(y <= 320,
                                NextValue(y, y + 1),
                            )
                        )
                    ),

           

            #If(en,
                If((y < 320) & (off_y == 0),
                    If((x < 480) & (off_x == 0),
                        wrx.eq(0),
                        NextValue(x, x + 1),
                        
                    ).Elif(off_x != 0,
                        NextValue(off_x, off_x - 1),
                        
                    ),
                ).Else(
                )
            #),
            

        )
        

        self.comb += idle.eq(0)



        fsm.act("START_SEND_BLUETHING",
            wrx.eq(1),
            rdx.eq(1),
            dcx.eq(1),
            d_o.eq(0x2c),
            d_oe.eq(1),
            NextState("SEND_BLUETHING")
        )


        line_count = Signal(32)

        fsm.act("SEND_BLUETHING",
            If(idx_counter >= 479,
                NextValue(idx_counter, 0),
                NextValue(line_count, line_count + 1)
            ).Else(
                NextValue(idx_counter, idx_counter + 1),
            ),
            If(line_count < 320,
                dcx.eq(1),
                rdx.eq(1),
                wrx.eq(0),
                self.wheel.pos.eq(idx_counter[1:] + (line_count << 1) + frame_count),

                NextValue(offset_counter, offset_counter + 1),
                d_oe.eq(1),
                d_o.eq(Cat(self.wheel.r[0:6], self.wheel.g[0:6], self.wheel.b[0:6])),
            ),
            If(line_count > 3000,
                NextValue(line_count, 0),
                NextValue(offset_counter, 0),
                NextValue(idx_counter,0),
                NextValue(frame_count, frame_count+1)

            ),
            If(~self.tpg.fields.bluething,
                NextState("IDLE"),
            ),
        )

class Wheel(Module):
    """Color wheel

    Generate an RGB value from a given wheel index (0-255)
    """
    def __init__(self):
        self.pos = Signal(8)
        self.r = Signal(8)
        self.g = Signal(8)
        self.b = Signal(8)

        pos_1 = Signal(8)
        pos_1_n = Signal(8)
        pos_check = Signal(8)
        pos_2 = Signal(8)
        pos_2_n = Signal(8)
        pos_3 = Signal(8)
        pos_3_n = Signal(8)
        # Input a value 0 to 255 to get a color value.
        # The colours are a transition r - g - b - back to r.
        self.sync += [
            pos_check.eq(255 - self.pos),

            pos_1.eq(pos_check * 3),
            pos_1_n.eq(255 - pos_1),

            pos_2.eq((pos_check - 85) * 3),
            pos_2_n.eq(255 - pos_2),

            pos_3.eq((pos_check - 170) * 3),
            pos_3_n.eq(255 - pos_3),

            If(pos_check < 85,
                self.r.eq(pos_1_n),
                self.g.eq(0),
                self.b.eq(pos_1),
            ).Elif(pos_check < 170,
                self.r.eq(0),
                self.g.eq(pos_2),
                self.b.eq(pos_2_n),
            )
            .Else(
                self.r.eq(pos_3),
                self.g.eq(pos_3_n),
                self.b.eq(0),
            )
        ]

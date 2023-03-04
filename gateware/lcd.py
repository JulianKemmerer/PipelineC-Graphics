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

from migen import *

from migen.genlib.fsm import FSM, NextState, NextValue

from gateware import lcdif
from gateware import CSRTransform




class LCD(Module):
    def __init__(self, pads, ref_freq=25e6, OFFX=45, OFFY=38, sim=False):
        self.r = r = Signal(8)
        self.g = g = Signal(8)
        self.b = b = Signal(8)
        self.hsync = hs = Signal(1)
        self.vsync = vs = Signal(1)
        self.en = en = Signal()

        short_delay = int(ref_freq * 10e-6)
        long_delay = int(ref_freq * 50e-3)
        if sim:
            short_delay = 10
            long_delay = 40


        vs_reg = Signal()
        hs_reg = Signal()

        hsync = Signal()
        vsync = Signal()
        self.sync += [
            vs_reg.eq(vs),
            hs_reg.eq(hs),
        ]
        self.comb += [
            hsync.eq(hs_reg & ~hs),
            vsync.eq(vs_reg & ~vs),
        ]

      

        self.submodules.lcd = lcd = CSRTransform.CSRTransform(self)(lcdif.LCDIF(pads, OFFX=OFFX, OFFY=OFFY))


        # add logic to init the screen?

        self.submodules.lcd_fsm = fsm = FSM(reset_state='INIT')

        counter = Signal(32)
        idx = Signal(16)

        counter_done = Signal()
        counter_ce = Signal()
        counter_val = Signal(32)

        self.sync += [
            If(counter_ce,
                counter.eq(counter_val)
            ).Elif(counter > 0,
                counter.eq(counter - 1)
            )
        ]

        self.comb += [
            counter_done.eq(counter == 0)
        ]

        # power on delay
        fsm.act('INIT',
            counter_val.eq(short_delay),
            counter_ce.eq(1),
            NextState('DISP_INIT'),
            lcd.ctrl.dat_w.bl.eq(1),
            lcd.ctrl.dat_w.reset.eq(0),
            lcd.ctrl.dat_w.cs.eq(0),
            lcd.ctrl.re.eq(1),

            NextValue(idx,0),
            
        )


        

       
       
        #display init data 
        lcd_init = [ 0x1F0, 0x05A, 0x05A, 0x1F1, 0x05A, 0x05A, 0x1F2, 0x03B, 0x040, 0x003, 0x004, 0x002, 0x008, 0x008, 0x000, 0x008, 0x008, 0x000, 
        0x000, 0x000, 0x000, 0x040, 0x008, 0x008, 0x008, 0x008, 0x1F4, 0x008, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x000, 0x06d, 0x003, 
        0x000, 0x070, 0x003, 0x1F5, 0x000, 0x054, 0x073, 0x000, 0x000, 0x004, 0x000, 0x000, 0x004, 0x000, 0x053, 0x071, 0x1F6, 0x004, 0x000, 0x008, 
        0x003, 0x001, 0x000, 0x001, 0x000, 0x1F7, 0x048, 0x080, 0x010, 0x002, 0x000, 0x1F8, 0x011, 0x000, 0x1F9, 0x027, 0x1FA, 0x00B, 0x00B, 0x00F, 
        0x026, 0x02A, 0x030, 0x033, 0x012, 0x01F, 0x025, 0x031, 0x030, 0x024, 0x000, 0x000, 0x001, 0x000, 0x000, 0x001, 0x03F, 0x12a, 0x000, 0x000, 
        0x001, 0x0DF, 0x12b, 0x000, 0x000, 0x001, 0x03F, 0x136, 0x0A0, 0x13A, 0x055, 0x111, 0x129, 0x12c]
        
        out_buffer = self.specials.out_buffer = Memory(9, len(lcd_init), init=lcd_init)
        self.specials.out_buffer_rd = out_buffer_rd = out_buffer.get_port(write_capable=False)
        self.autocsr_exclude = ['out_buffer']

        self.comb += [
            out_buffer_rd.adr.eq(idx),
        ]

        # Init the display
        fsm.act('DISP_INIT',
            If(counter_done,
                If(out_buffer_rd.dat_r & 0x100, # CMD
                    lcd.cmd.dat_w.eq(out_buffer_rd.dat_r[:8]),
                    lcd.cmd.re.eq(1),
                ).Else(
                    lcd.data.dat_w.eq(out_buffer_rd.dat_r[:8]),
                    lcd.data.re.eq(1),
                ),
                NextState('WAIT'),
                NextValue(idx, idx + 1),
            )
            
        )

        fsm.act('WAIT',
            counter_val.eq(short_delay),
            counter_ce.eq(1),
            
            If(idx >= len(lcd_init),
                NextState('DISPLAY'),
            ).Else(
                If(out_buffer_rd.dat_r == 0x129,
                    counter_val.eq(long_delay),
                ),
                NextState('DISP_INIT'),
                
            )
        )

        fsm.act('DISPLAY',
            If(counter_done,
                If(vsync,
                    NextState('DISPLAY_FB'),
                    lcd.tpg.dat_w.bluething.eq(0),
                    lcd.tpg.re.eq(1),
                ).Else(
                    lcd.tpg.dat_w.bluething.eq(1),
                    lcd.tpg.re.eq(1),
                )
            )
        )

        fsm.act('DISPLAY_FB',
            
            #lcd.tpg.dat_w.bluething.eq(0),
            #lcd.tpg.re.eq(1),
            lcd.fb.dat_w.frame.eq(1),
            lcd.fb.re.eq(1),

            lcd.vsync.eq(vsync),
            lcd.hsync.eq(hsync),
            #lcd.en.eq(en),
            lcd.dat.eq(Cat(b[3:8],g[2:8],r[3:8]))
        )
        
    
        fsm.act('LOOP',
            
            NextState('LOOP')
        )

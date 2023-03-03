# Integration of graphics generators into LiteX, supporting DVI output or a VGA pmod
# Only requirement is a VHDL module called "top_glue_no_struct" with the needed arguments
#
# Copyright (c) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
# code portions from LiteX framework (C) Enjoy-Digital https://github.com/enjoy-digital/litex

import sys
import os

from migen import *
from litex.soc.cores.clock import *
from litex.soc.cores.video import VideoTimingGenerator, video_timing_layout, video_data_layout, video_timings
from litex.soc.interconnect import stream
from litex.soc.integration.builder import *
from litex.soc.integration.soc_core import *
from litex.build.generic_platform import *
from litex.gen import LiteXModule

DVI = True # False = Use PMOD B+C VGA
VHDL = True

class GraphicsGenerator(Module):
    def __init__(self, button):
        self.enable   = Signal(reset=1)
        self.vtg_sink = vtg_sink   = stream.Endpoint(video_timing_layout)
        self.source   = source = stream.Endpoint(video_data_layout)
        self.comb += vtg_sink.connect(source, keep={"valid", "ready", "last", "de", "hsync", "vsync"}),

        framedisplay = Module()
        if True:
          framedisplay_signals = {
            "i_pixel_clock": ClockSignal("sys"),
           "i_ext_vga_x": vtg_sink.hcount,
           "i_ext_vga_y": vtg_sink.vcount,
            #"i_buttons_module_btn[3]": ResetSignal("sys"),
            "i_buttons_module_btn": button,
            "o_dvi_red_DEBUG_return_output": source.r,
            "o_dvi_green_DEBUG_return_output": source.g,
            "o_dvi_blue_DEBUG_return_output": source.b,
            }
          framedisplay.specials += Instance("top", **framedisplay_signals)
        else:
          """
          module M_frame_display__display (
          input  [10:0] in_pix_x,
          input  [10:0] in_pix_y,
          input  [0:0] in_pix_active,
          input  [0:0] in_pix_vblank,
          input  [0:0] in_vga_hs,
          input  [0:0] in_vga_vs,
          output  [5:0] out_pix_r,
          output  [5:0] out_pix_g,
          output  [5:0] out_pix_b,
          output out_done,
          input reset,
          output out_clock,
          input clock
          );
          """
          framedisplay.specials += Instance("M_frame_display__display",
            i_in_pix_x = vtg_sink.hcount,
            i_in_pix_y = vtg_sink.vcount,
            i_in_pix_active = vtg_sink.de,
            i_in_pix_vblank = vtg_sink.vsync,
            #i_in_vga_hs = vtg_sink.hsync,
            #i_in_vga_vs = vtg_sink.vsync,
            o_out_pix_r = source.r[2:8],
            o_out_pix_g = source.g[2:8],
            o_out_pix_b = source.b[2:8],
            #o_out_done = self.done,
            i_reset = ResetSignal("sys"),
            #o_out_clock = self.out_clock,
            i_clock = ClockSignal("sys") #results in "hdmi" clock
          )
        

        self.framedisplay = framedisplay 
        self.submodules += framedisplay

def add_video_custom_generator(soc, name="video", phy=None, timings="800x600@60Hz", clock_domain="sys"):
    # Video Timing Generator.
    soc.check_if_exists(f"{name}_vtg")
    vtg = VideoTimingGenerator(default_video_timings=timings)
    vtg = ClockDomainsRenamer(clock_domain)(vtg)
    setattr(soc.submodules, f"{name}_vtg", vtg)

    graphics = GraphicsGenerator(soc.button)
    graphics = ClockDomainsRenamer(clock_domain)(graphics)
    setattr(soc.submodules, name, graphics)

    # Connect Video Timing Generator to GraphicsGenerator
    soc.comb += [
        vtg.source.connect(graphics.vtg_sink),
        graphics.source.connect(phy if isinstance(phy, stream.Endpoint) else phy.sink)
    ]


def build_de0nano(args, timings):
	from litex_boards.platforms import de0nano as board
	sys.path.append("../cflexhdl/external/litex-boards")
	from terasic_de0nano import VideoHDMIPHY, _CRG

	# GPDI using LVDS outputs
	#FIXME: use platform.add_extension
	board._io += (("gpdi", 0, #NOTE: negative LVDS output seems automatic
		Subsignal("clk_p",   Pins("R16"), IOStandard("LVDS")), #JP2.23=GPIO.118=R16 orange box 
	   #Subsignal("clk_n",   Pins("P16"), IOStandard("LVDS")), #JP2.26=GPIO.121=P16 orange 
		Subsignal("data2_p", Pins("N15"), IOStandard("LVDS")), #JP2.31=GPIO.124=N15 red
	   #Subsignal("data2_n", Pins("N16"), IOStandard("LVDS")), #JP2.28=GPIO.123=N16 red    box (NOTE INVERSION)
		Subsignal("data1_p", Pins("L15"), IOStandard("LVDS")), #JP2.24=GPIO.119=L15 green  box
	   #Subsignal("data1_n", Pins("L16"), IOStandard("LVDS")), #JP2.21=GPIO.116=L16 green
		Subsignal("data0_p", Pins("K15"), IOStandard("LVDS")), #JP2.38=GPIO.131=K15 blue   box
	   #Subsignal("data0_n", Pins("K16"), IOStandard("LVDS")), #JP2.22=GPIO.117=K16 blue
	),)

	platform = board.Platform()

	sys_clk_freq = int(50e6)
	soc = SoCCore(platform, sys_clk_freq, **soc_core_argdict(args))
	soc.submodules.crg = _CRG(soc.platform, sys_clk_freq, sdram_rate="1:1")
	soc.video_clock_domain = "hdmi"
	soc.submodules.videophy = VideoHDMIPHY(soc.platform.request("gpdi"), clock_domain = soc.video_clock_domain)
	return soc

lcd_timings = ("480x320@60Hz", {
	"pix_clk"       : 12e6, #TODO: check datasheet
	"h_active"      : 480,
    "h_blanking"    : 64,
    "h_sync_offset" : 8,
    "h_sync_width"  : 24,
    "v_active"      : 320,
    "v_blanking"    : 64,
    "v_sync_offset" : 8,
    "v_sync_width"  : 24,
})

video_timings[lcd_timings[0]] = lcd_timings[1]

def get_video_timings():
	timings_sel = "{W}x{H}@{FPS}Hz".format(W = os.environ["FRAME_WIDTH"], H = os.environ["FRAME_HEIGHT"], FPS = os.environ["FRAME_FPS"])
	timings = video_timings[timings_sel]
	if timings_sel == "640x480@60Hz":
	    timings["pix_clk"] = 25e6 #fix default 25.18MHz
	if timings_sel == "1920x1080@60Hz":
	    timings["pix_clk"] = 150e6 #fix default 148.5MHz
	if timings_sel == "1280x720@60Hz":
	    timings["pix_clk"] = 72e6 #fix default 74.25MHz
	#if timings_sel == "1024x768@60Hz":
	#    timings["pix_clk"] = 52.5e6 #fix default 65MHz see https://github.com/JulianKemmerer/PipelineC/issues/152
	print("pixel clock", timings["pix_clk"]) 
	return timings


class _CRG_arty(Module):
    def __init__(self, platform, sys_clk_freq, video_clock, with_rst=True):
        self.rst = Signal()
        self.clock_domains.cd_sys       = ClockDomain()

        self.submodules.pll = pll = S7PLL(speedgrade=-1)
        rst    = ~platform.request("cpu_reset") if with_rst else 0
        self.comb += pll.reset.eq(rst | self.rst)
        pll.register_clkin(platform.request("clk100"), 100e6)
        pll.create_clkout(self.cd_sys,       sys_clk_freq)

        if DVI:
            self.clock_domains.cd_hdmi   = ClockDomain()
            self.clock_domains.cd_hdmi5x = ClockDomain()
            pll.create_clkout(self.cd_hdmi,     video_clock, margin=1e-3)
            pll.create_clkout(self.cd_hdmi5x, 5*video_clock, margin=1e-3)
        else:
            #self.clock_domains.cd_vga       = ClockDomain(reset_less=True)
            self.clock_domains.cd_vga       = ClockDomain(reset_less=False) #TODO: chech why True brings errors
            pll.create_clkout(self.cd_vga, video_clock, margin=1e-3)
        platform.add_false_path_constraints(self.cd_sys.clk, pll.clkin) # Ignore sys_clk to pll.clkin path created by SoC's rst.


def build_arty(args, timings):
	from litex_boards.platforms import digilent_arty as board
	#platform = board.Platform(variant="a7-100", toolchain="vivado") # a7-35 or a7-100 
	platform = board.Platform(toolchain="yosys+nextpnr") #brings errors about usage of DSP48E1 (* operator) and of ODDR
	sys_clk_freq = int(100e6)
	soc = SoCCore(platform, sys_clk_freq, **soc_core_argdict(args))
	soc.submodules.crg = _CRG_arty(platform, sys_clk_freq, timings["pix_clk"], False)
	soc.button = soc.platform.request('user_btn', 0)

	if DVI:
		from litex.soc.cores.video import VideoS7HDMIPHY
		platform.add_extension([("hdmi_out", 0, #DVI pmod breakout on pmod C (seems not working in others than C)
			Subsignal("data0_p", Pins("pmodc:0"), IOStandard("TMDS_33")),
			Subsignal("data0_n", Pins("pmodc:1"), IOStandard("TMDS_33")),
			Subsignal("data1_p", Pins("pmodc:2"), IOStandard("TMDS_33")),
			Subsignal("data1_n", Pins("pmodc:3"), IOStandard("TMDS_33")),
			Subsignal("data2_p", Pins("pmodc:4"), IOStandard("TMDS_33")),
			Subsignal("data2_n", Pins("pmodc:5"), IOStandard("TMDS_33")),
			Subsignal("clk_p",   Pins("pmodc:6"), IOStandard("TMDS_33")),
			Subsignal("clk_n",   Pins("pmodc:7"), IOStandard("TMDS_33")))])
		soc.submodules.videophy = VideoS7HDMIPHY(platform.request("hdmi_out"), clock_domain="hdmi")
		add_video_custom_generator(soc, phy=soc.videophy, timings=timings, clock_domain="hdmi")
	else:
		from litex.soc.cores.video import VideoVGAPHY
		platform.add_extension([("vga", 0, #PMOD VGA on pmod B & C
			Subsignal("hsync", Pins("U14")), #pmodc.4
			Subsignal("vsync", Pins("V14")), #pmodc.5
			Subsignal("r", Pins("E15 E16 D15 C15")), #pmodb.0-3
			Subsignal("g", Pins("U12 V12 V10 V11")), #pmodc.0-3
			Subsignal("b", Pins("J17 J18 K15 J15")), #pmodb.4-7
			IOStandard("LVCMOS33"))])
		soc.submodules.videophy = VideoVGAPHY(platform.request("vga"), clock_domain="vga")
		add_video_custom_generator(soc, phy=soc.videophy, timings=timings, clock_domain="vga")
	return soc #TODO: review code on pipelinec-graphics repo


from migen.genlib.misc import WaitTimer
from migen.genlib.resetsync import AsyncResetSynchronizer

class _CRGOrangecrab(LiteXModule):
    def __init__(self, platform, sys_clk_freq, video_clock, with_usb_pll=True):
        self.rst = Signal()
        self.cd_por      = ClockDomain()
        self.cd_sys      = ClockDomain()

        # # #

        self.stop  = Signal()
        self.reset = Signal()

        # Clk / Rst
        clk48 = platform.request("clk48")
        platform.usr_btn = rst_n = platform.request("usr_btn", loose=True)
        if rst_n is None:
          print("rst_n INEXISTENT")
          quit()
          rst_n = 1

        # Power on reset
        por_count = Signal(16, reset=2**16-1)
        por_done  = Signal()
        self.comb += self.cd_por.clk.eq(clk48)
        self.comb += por_done.eq(por_count == 0)
        self.sync.por += If(~por_done, por_count.eq(por_count - 1))

        # PLL
        self.pll = pll = ECP5PLL()
        self.comb += pll.reset.eq(~por_done | ~rst_n | self.rst)
        pll.register_clkin(clk48, 48e6)
        pll.create_clkout(self.cd_sys, sys_clk_freq)

        # USB PLL
        if with_usb_pll:
            self.cd_usb_12 = ClockDomain()
            self.cd_usb_48 = ClockDomain()
            usb_pll = ECP5PLL()
            self.submodules += usb_pll
            self.comb += usb_pll.reset.eq(~por_done)
            usb_pll.register_clkin(clk48, 48e6)
            usb_pll.create_clkout(self.cd_usb_48, 48e6)
            usb_pll.create_clkout(self.cd_usb_12, 12e6)
            
            
        # Video PLL
        vga_pll = ECP5PLL()
        self.submodules += vga_pll
        self.comb += vga_pll.reset.eq(~por_done)
        vga_pll.register_clkin(clk48, 48e6)
        if DVI:
            self.cd_hdmi   = ClockDomain()
            self.cd_hdmi5x = ClockDomain()
            vga_pll.create_clkout(self.cd_hdmi,     video_clock, margin=1e-2)
            vga_pll.create_clkout(self.cd_hdmi5x, 5*video_clock, margin=1e-2) #ECP5 max: 400MHz
        else: 
            self.cd_vga  = ClockDomain()
            vga_pll.create_clkout(self.cd_vga, video_clock)
        

        # FPGA Reset (press usr_btn for 1 second to fallback to bootloader)
        reset_timer = WaitTimer(int(48e6))
        reset_timer = ClockDomainsRenamer("por")(reset_timer)
        self.submodules += reset_timer
        self.comb += reset_timer.wait.eq(~rst_n)
        self.comb += platform.request("rst_n").eq(~reset_timer.done)

def build_orangecrab(args, timings):
	from litex_boards.platforms import gsd_orangecrab as board
	revision="0.2"
	device="85F"
	sdram_device="MT41K64M16"
	toolchain="trellis"

	platform = board.Platform(revision=revision, device=device ,toolchain=toolchain)
	#from litex.build.yosys_wrapper import YosysWrapper
	#YosysWrapper._default_template =  [] #see .ys file for default, [] to skip JSON build

	sys_clk_freq=int(48e6)
	kwargs = soc_core_argdict(args)
	kwargs["uart_name"] = "usb_acm" #set this to get USB ACM serial
    #platform.add_extension(gsd_orangecrab.feather_serial) #rx=GPIO:0 & tx=GPIO:1
	soc = SoCCore(platform, sys_clk_freq, **kwargs)
	soc.submodules.crg = _CRGOrangecrab(platform, sys_clk_freq, timings["pix_clk"])
	soc.button = ~platform.usr_btn

	if DVI:
		from litex.soc.cores.video import VideoHDMIPHY
		#https://github.com/machdyne/ddmi/"
		#(PMPOD UP 1-4) D2- D1- D0- C- G +V"
        #               D2+ D1+ D0+ C+ G +V"
		platform.add_extension([("hdmi_out", 0, #can use GND and just 4 more wires
			Subsignal("data2_p", Pins("R17"), IOStandard("LVCMOS33")), #SCK
			#Subsignal("data2_n", Pins("??"), IOStandard("LVCMOS33")),
			Subsignal("data1_p", Pins("N16"), IOStandard("LVCMOS33")), #MOSI
			#Subsignal("data1_n", Pins("??"), IOStandard("LVCMOS33")),
			Subsignal("data0_p", Pins("N15"), IOStandard("LVCMOS33")), #MISO
			#Subsignal("data0_n", Pins("??"), IOStandard("LVCMOS33")),
			Subsignal("clk_p",   Pins("C10"), IOStandard("LVCMOS33")), #SDA
			#Subsignal("clk_n",   Pins("??"), IOStandard("LVCMOS33"))
			)])
		soc.submodules.videophy = VideoHDMIPHY(platform.request("hdmi_out"), clock_domain="hdmi")
		add_video_custom_generator(soc, phy=soc.videophy, timings=timings, clock_domain="hdmi")
	else:
		from litex.soc.cores.video import VideoVGAPHY
		platform.add_extension([("vga", 0, #for PMOD VGA
		    Subsignal("hsync", Pins("N15")), #MISO
		    Subsignal("vsync", Pins("N16")), #MOSI
		    Subsignal("b", Pins("R17")), #SCK
		    Subsignal("g", Pins("C10")), #SDA
		    Subsignal("r", Pins("C9")), #SCL
		    IOStandard("LVCMOS33"))])
		soc.submodules.videophy = VideoVGAPHY(platform.request("vga"), clock_domain="vga")
		add_video_custom_generator(soc, phy=soc.videophy, timings=timings, clock_domain="vga")
	return soc


class _CRG_HadBadge2019(LiteXModule):
    def __init__(self, platform, sys_clk_freq, video_clock=12e6, with_video_pll=False):
        self.rst    = Signal()
        self.cd_sys = ClockDomain()

        # # #

        # Clk / Rst
        clk8 = platform.request("clk8")


        # PLL
        self.pll = pll = ECP5PLL()
        pll.pfd_freq_range = (8e6, 400e6) # Lower Min from 10MHz to 8MHz.
        self.comb += pll.reset.eq(self.rst)
        pll.register_clkin(clk8, 8e6)
        pll.create_clkout(self.cd_sys, sys_clk_freq) #TODO: merge PLLs

        # Video PLL
        if with_video_pll:
            self.submodules.video_pll = video_pll = ECP5PLL()
            video_pll.pfd_freq_range = pll.pfd_freq_range
            video_pll.register_clkin(clk8, 8e6)
            self.cd_dvi = ClockDomain()
            self.cd_dvi5x = ClockDomain()
            video_pll.create_clkout(self.cd_dvi, video_clock)
            video_pll.create_clkout(self.cd_dvi5x, 5*video_clock)


class HadBadge_LCDPHY(Module):
    def __init__(self, pads, clock_domain="sys", ref_freq=25e6):
        self.sink = sink = stream.Endpoint(video_data_layout)

        # # #
        from gateware.lcd import LCD # AUO H320QN01
        l = LCD(pads, ref_freq=ref_freq, OFFX=56-3, OFFY=56) #OFFX seems like blanking-sync_offset-3
        l = ClockDomainsRenamer(clock_domain)(l)
        self.submodules.lcd = l

        # Always ack Sink, no backpressure.
        self.comb += sink.ready.eq(1)

        # Drive Controls.
        self.comb += l.en.eq(sink.de)
        self.comb += l.hsync.eq(~sink.hsync)
        self.comb += l.vsync.eq(~sink.vsync)

        # Drive Datas.
        self.comb += l.r.eq(sink.r)
        self.comb += l.g.eq(sink.g)
        self.comb += l.b.eq(sink.b)

def build_hadbadge2019(args, timings):
	from litex_boards.platforms import hackaday_hadbadge as board
	toolchain="trellis"

	platform = board.Platform(toolchain=toolchain)
	#from litex.build.yosys_wrapper import YosysWrapper
	#YosysWrapper._default_template =  [] #see .ys file for default, [] to skip JSON build

	sys_clk_freq=int(8e6)
	kwargs = soc_core_argdict(args)
	soc = SoCCore(platform, sys_clk_freq, **kwargs)
	video_clock = timings["pix_clk"]

	soc.submodules.crg = _CRG_HadBadge2019(platform, sys_clk_freq, video_clock)
	soc.button = Signal() #~platform.usr_btn

	lcd_clk = "sys"
	soc.submodules.videophy = HadBadge_LCDPHY(platform.request("lcd"), clock_domain=lcd_clk, ref_freq=video_clock)
	add_video_custom_generator(soc, phy=soc.videophy, timings=timings, clock_domain=lcd_clk)

	return soc


if __name__ == "__main__":
	boardname = sys.argv[1]
	sys.argv = sys.argv[1:] #remove first argument

	import argparse
	parser = argparse.ArgumentParser()
	soc_core_args(parser)
	args = parser.parse_args()

	timings = get_video_timings()
	run = True
	if boardname == "de0nano": soc = build_de0nano(args, timings)
	if boardname == "digilent_arty": soc = build_arty(args, timings)
	if boardname == "gsd_orangecrab":
		VHDL=False
		run=False
		soc = build_orangecrab(args, timings)
	if boardname == "hackaday_hadbadge":
		VHDL=False
		run=True
		soc = build_hadbadge2019(args, timings)

	if VHDL:
		soc.platform.add_source_dir("./vhd/all_vhdl_files", recursive=False)
	else:
		soc.platform.add_source("./vhd/all_vhdl_files/top.v")


	builder = Builder(soc)
	builder.build(run=run)




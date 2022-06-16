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

DVI = False # False = Use PMOD B+C VGA

class GraphicsGenerator(Module):
    def __init__(self, button):
        self.enable   = Signal(reset=1)
        self.vtg_sink = vtg_sink   = stream.Endpoint(video_timing_layout)
        self.source   = source = stream.Endpoint(video_data_layout)
        self.comb += vtg_sink.connect(source, keep={"valid", "ready", "last", "de", "hsync", "vsync"}),

        framedisplay = Module()
        self.return_output_a = Signal(8)
        framedisplay.specials += Instance("top_glue_no_struct", #FIXME: figure out how to avoid the glue and access the output structure
          i_videoclk = ClockSignal("sys"), #results in "hdmi" (or corresponding video) clock
          i_video_x = vtg_sink.hcount,
          i_video_y = vtg_sink.vcount,
          i_reset = ResetSignal("sys"),
          i_jump_pressed = button,
          o_pixel_a = self.return_output_a, #FIXME: just Signal(8)
          o_pixel_r = source.r,
          o_pixel_g = source.g,
          o_pixel_b = source.b
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

def get_video_timings():
	timings_sel = "{W}x{H}@{FPS}Hz".format(W = os.environ["FRAME_WIDTH"], H = os.environ["FRAME_HEIGHT"], FPS = os.environ["FRAME_FPS"])
	timings = video_timings[timings_sel]
	if timings_sel == "640x480@60Hz":
	    timings["pix_clk"] = 25e6 #fix default 25.18MHz
	if timings_sel == "1920x1080@60Hz":
	    timings["pix_clk"] = 150e6 #fix default 148.5MHz
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
	from litex_boards.platforms import arty as board
	platform = board.Platform(variant="a7-35", toolchain="vivado") # a7-35 or a7-100 
	#platform = board.Platform(toolchain="yosys+nextpnr") #brings errors about usage of DSP48E1 (* operator) and of ODDR
	sys_clk_freq = int(100e6)
	soc = SoCCore(platform, sys_clk_freq, **soc_core_argdict(args))
	soc.submodules.crg = _CRG_arty(platform, sys_clk_freq, timings["pix_clk"], False)
	soc.button = soc.platform.request('user_btn', 0)

	if DVI:
		from litex.soc.cores.video import VideoS7HDMIPHY
		platform.add_extension([("hdmi_out", 0, #DVI pmod breakout on pmod C (seems not working in others than C)
			Subsignal("data2_p", Pins("pmodc:0"), IOStandard("TMDS_33")), #outputs 2-1-0 inverted, maybe the custom adaptor has wrong wirings?
			Subsignal("data2_n", Pins("pmodc:1"), IOStandard("TMDS_33")),
			Subsignal("data1_p", Pins("pmodc:2"), IOStandard("TMDS_33")),
			Subsignal("data1_n", Pins("pmodc:3"), IOStandard("TMDS_33")),
			Subsignal("data0_p", Pins("pmodc:4"), IOStandard("TMDS_33")),
			Subsignal("data0_n", Pins("pmodc:5"), IOStandard("TMDS_33")),
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


if __name__ == "__main__":
	boardname = sys.argv[1]
	sys.argv = sys.argv[1:] #remove first argument

	import argparse
	parser = argparse.ArgumentParser()
	soc_core_args(parser)
	args = parser.parse_args()

	timings = get_video_timings()
	if boardname == "de0nano": soc = build_de0nano(args, timings)
	if boardname == "arty": soc = build_arty(args, timings)

	soc.platform.add_source_dir("./vhd/all_vhdl_files", recursive=False)


	builder = Builder(soc)
	builder.build(run=True)




# Integration of graphics generators into LiteX, supporting DVI output or a VGA pmod
# Only requirement is a verilog module called "top" with the needed arguments
#
# Copyright (c) 2022 Victor Suarez Rovere <suarezvictor@gmail.com>
# code portions from LiteX framework (C) Enjoy-Digital https://github.com/enjoy-digital/litex

import sys

from migen import *
from litex.soc.cores.clock import *
from litex.soc.cores.video import VideoTimingGenerator, video_timing_layout, video_data_layout
from litex.soc.interconnect import stream
from litex.soc.integration.builder import *
from litex.soc.integration.soc_core import *
from litex.build.generic_platform import *


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
          i_render_pixel_interactive_x = vtg_sink.hcount,
          i_render_pixel_interactive_y = vtg_sink.vcount,
          i_render_pixel_interactive_reset = ResetSignal("sys"),
          i_render_pixel_interactive_vsync = ~vtg_sink.vsync,
          i_render_pixel_interactive_button = button,
          o_render_pixel_interactive_return_output_a = self.return_output_a, #FIXME: just Signal(8)
          o_render_pixel_interactive_return_output_b = source.b,
          o_render_pixel_interactive_return_output_g = source.g,
          o_render_pixel_interactive_return_output_r = source.r
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


def build_de0nano(args):
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


class _CRG_arty(Module):
    def __init__(self, platform, sys_clk_freq, with_rst=True):
        self.rst = Signal()
        self.clock_domains.cd_sys       = ClockDomain()
        self.clock_domains.cd_sys4x     = ClockDomain(reset_less=True)
        self.clock_domains.cd_sys4x_dqs = ClockDomain(reset_less=True)
        self.clock_domains.cd_idelay    = ClockDomain()
        #self.clock_domains.cd_vga       = ClockDomain(reset_less=True)
        self.clock_domains.cd_vga       = ClockDomain(reset_less=False) #TODO: chech why True brings errors

        self.submodules.pll = pll = S7PLL(speedgrade=-1)
        rst    = ~platform.request("cpu_reset") if with_rst else 0
        self.comb += pll.reset.eq(rst | self.rst)
        pll.register_clkin(platform.request("clk100"), 100e6)
        pll.create_clkout(self.cd_sys,       sys_clk_freq)
        pll.create_clkout(self.cd_sys4x,     4*sys_clk_freq)
        pll.create_clkout(self.cd_sys4x_dqs, 4*sys_clk_freq, phase=90)
        pll.create_clkout(self.cd_idelay,    200e6)
        pll.create_clkout(self.cd_vga, 25e6, margin=1e-3)
        platform.add_false_path_constraints(self.cd_sys.clk, pll.clkin) # Ignore sys_clk to pll.clkin path created by SoC's rst.


def build_arty(args):
	from litex_boards.platforms import arty as board
	from litex.soc.cores.video import VideoVGAPHY
	platform = board.Platform(toolchain="vivado")
	#platform = board.Platform(toolchain="yosys+nextpnr") #brings errors about usage of DSP48E1 (* operator) and of ODDR

	platform.add_extension([("vga", 0, #PMOD VGA on pmod B & C
		Subsignal("hsync", Pins("U14")), #pmodc.4
		Subsignal("vsync", Pins("V14")), #pmodc.5
		Subsignal("r", Pins("E15 E16 D15 C15")), #pmodb.0-3
		Subsignal("g", Pins("U12 V12 V10 V11")), #pmodc.0-3
		Subsignal("b", Pins("J17 J18 K15 J15")), #pmodb.4-7
		IOStandard("LVCMOS33"))])

	sys_clk_freq = int(100e6)
	soc = SoCCore(platform, sys_clk_freq, **soc_core_argdict(args))
	soc.submodules.crg = _CRG_arty(platform, sys_clk_freq, False)
	soc.video_clock_domain = "vga"
	soc.submodules.videophy = VideoVGAPHY(platform.request("vga"), clock_domain=soc.video_clock_domain)
	return soc


if __name__ == "__main__":
	import sys
	boardname = sys.argv[1]
	sys.argv = sys.argv[1:] #remove first argument

	import argparse
	parser = argparse.ArgumentParser()
	soc_core_args(parser)
	args = parser.parse_args()

	if boardname == "de0nano": soc = build_de0nano(args)
	if boardname == "arty": soc = build_arty(args)

	soc.button = soc.platform.request('user_btn', 0)
	add_video_custom_generator(soc, phy=soc.videophy, timings="640x480@60Hz", clock_domain=soc.video_clock_domain)
	soc.platform.add_source_dir("./vhd/all_vhdl_files", recursive=False)
	#alternative: read contents of ./vhd/vhdl_files.txt
	#soc.platform.add_source("./build/top/top_litex.v") #for generated verilog, single file (i.e. from verilator)
	#soc.platform.add_source("top_glue.v") #TODO: is it really needed?


	builder = Builder(soc)
	builder.build(run=True)



# PipelineC-Graphics

Graphics demos implemented using [PipelineC](https://github.com/JulianKemmerer/PipelineC).

This primarily consists of a ray tracing demo created using [CflexHDL](https://github.com/suarezvictor/CflexHDL) C++ code.

Work contained in these repositories is experimental and in active development. Please [report any issues](https://github.com/JulianKemmerer/PipelineC-Graphics/issues) that are encountered.

# Sphery vs. Shapes:

A fully working interactive raytraced game written in C and translated to a circuit. No CPU is used, and the few resources used run at an outstanding power efficiency. Check out a [demo video](https://youtu.be/hn3sr3VMJQU) of gameplay on real hardware!
![image](https://user-images.githubusercontent.com/8551129/197263472-bcde79f4-2efe-42c0-ae0b-16fe6aaf9331.png)

A detailed article describing this work is [here](https://github.com/JulianKemmerer/PipelineC-Graphics/blob/main/doc/Sphery-vs-Shapes.pdf)


# Supported boards

Boards supported are the [Digilent Arty-100T](https://digilent.com/reference/programmable-logic/arty-a7/start) and the [OrangeCrab 85F v0.2](https://1bitsquared.com/products/orangecrab).
After selecting the device, use `make load` for the Arty or `BOARD=gsd_orangecrab make load` for the OrangeCrab. The device is set as a #pragma in pipelinec_app.c (uncomment xc7a100tcsg324-1 or LFE5U-85F-6BG381C respectively)

# Contact

Twitter: 
[@pipelinec_hdl](https://twitter.com/pipelinec_hdl) 
[@suarezvictor](https://twitter.com/suarezvictor)

Talk on Discord: [Digital Design HQ](https://discord.gg/pY2wJvnCMY)
`#hdl-other`
`#project-chat`
`#fpga`


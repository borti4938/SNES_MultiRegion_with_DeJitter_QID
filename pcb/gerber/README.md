(text copied from main [README](../README.md))

#### Manufacturing the PCB

You can choose any manufacturer which you prefer. All files for manufacturing including the design files are provided in subfolder [pcb/](./pcb/). As the PCB is designed in EAGLE (current version 7.4.2), gerbers are exported in the actual format. However, some services have problem while automatically analyze those like OSHPark or JCLPCB. Please try the older format in [pcb.eagle_legacy_export/](./pcb.eagle_legacy_export/).

For using the OSHPark service, you can also use my [uploaded project](https://oshpark.com/shared_projects/6n0e1VDd).



##### Soldering

The PCB is designed with having hand soldering in mind. Most complicated footprints are probably the 44TQFP package of the CPLD or the 14TSSOP of the CDCE913.

However, if you plan to use a stencil, you can use the [stencil gerber file](./stencil/SNES_MR_DeJitter_QID.GTP). All SMD are placed in top layer.
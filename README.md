# M4 Board Enclosures Generator

This project provides OpenSCAD files for creating 3d models of some revisions of M4 Board by Duke (https://spinpoint.org) for Amstrad CPC.

It uses a [PCB Enclosure Generator](https://github.com/yawor/openscad-pcb-enclosure-generator) library.

Currently supported board revisions revisions:
- 2.5C with an edge connector
- 2.5C with an idc connector (not tested)
- 2.5B with an edge connector (not tested)
- 2.5B with an idc connector (not tested)

Ready to use STL files can be found in stl directory.


## Customizing

To customize the enclosures, clone this repository using:
```sh
git clone --recursive https://github.com/yawor/m4board-enclosure.git
```

The PCB Enclosure Generator library is added as a git submodule in pcb_enclosure directory.

Each board revision is defined in its own OpenSCAD file.

The provided files use FontAwesome and Fredoka One fonts to render texts and symbols, which you should have installed on your system, unless you plan to change them to some other fonts. These fonts use SIL OFL 1.1 and are free to download and use.


## Printed case

Images show a printed case for M4 Board rev2.5c with an edge connector. It's printed with Prusa's Galaxy Black PLA, with inserts printed with Prusa's Galaxy Silver PLA on a Prusa Mini printer.

![rev2.5c edge image1](/img/rev25c_edge1.jpg?raw=true)
![rev2.5c edge image2](/img/rev25c_edge2.jpg?raw=true)



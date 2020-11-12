# M4 Board Enclosures Generator

This project provides OpenSCAD files for creating 3d models of some revisions of M4 Board by Duke (https://spinpoint.org) for Amstrad CPC.

It uses a [PCB Enclosure Generator](https://github.com/yawor/openscad-pcb-enclosure-generator) library.

Currently supported board revisions revisions:
- 2.5C
- 2.5B (not tested)

Ready to use STL files can be found in stl directory.


## Customizing

To customize the enclosures, clone this repository using:
```sh
git clone --recursive https://github.com/yawor/m4board-enclosure.git
```

The PCB Enclosure Generator library is added as a git submodule in pcb_enclosure directory.

Each board revision is defined in its own OpenSCAD file.

The provided files use FontAwesome and Fredoka One fonts to render texts and symbols, which you should have installed on your system, unless you plan to change them to some other fonts. These fonts use SIL OFL 1.1 and are free to download and use.


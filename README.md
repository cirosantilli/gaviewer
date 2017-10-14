# GAViewer

GAViewer geometric algebra viewer with slightly better packaging and a README <http://www.geometricalgebra.net/gaviewer_download.html>

Tested in Ubuntu 17.04:

    sudo apt-get install libantlr-dev libfltk-dev
    ./configure
    make

TODO: final link missing `-lGL -lGLU`, I just `cd src` and add it manually on the CLI for now:

    ./src/gaviewer

Inside the program:

- File
- Load .g directory
- Point to `examples/tutorial_files/`

Inside the program console:

    DEMOc2ga()

Tutorials under:

    examples/*.pdf

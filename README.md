# puppy_icon_theme

Standard SVG icons for Puppy Linux (or other Linux).

These icons when packaged (xz compressed) are only 52KB! They expand to over
5MB (on disk). They are derived from @zigbert 's work in woof-CE, with ideas
from @technosaurus .

## Build

First type `export THEME="Puppy Standard"`.

Then type `make`.

The icons will be built in `"Puppy Standard"` directory.

To install just type `make install`. `DESTDIR` is supported.

Alternatively, just run the `build_theme` script from the current loacation
if you don't have `make`. The Makefile is just a convenience for packaging;
entirely not necessary.

## Artwork

I am no artist! ( @01micko ). Some of the icons could do with some (a lot?)
of work. Feel free to send in your pull requests but none built from InkScape 
or othe SVG editors please.

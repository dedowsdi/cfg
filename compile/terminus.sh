#!/bin/sh

# the simplest way is `apt install xfonts-terminus`

# the less simple way is
# ./configure --x11dir=/usr/share/fonts/X11/misc
# make pcf && make install-pcf && make fontdir

# make fontdir calls :
# mkfontscale ...
# mkfontdir ...
# fc-cache -f ...

# The hard way is to install fonts to a new director
# You must add the new directory (~/usr/local/share/fonts/terminus) to x11 font path
./configure --prefix=/usr/local
make pcf && make install-pcf
make pcf-8bit && make install-pcf-8bit
make fontdir
cp /usr/local/share/consolefonts/ter-1*.gz /usr/share/consolefonts

# note that only 16, 20, 24 looks nice.

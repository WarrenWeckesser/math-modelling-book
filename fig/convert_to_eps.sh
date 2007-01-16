#!/bin/sh

# Based on command
#fig2dev -L eps IMMtitle.fig > IMMtitle.eps

for file in `ls *fig`; do
    basefile=`basename $file .fig`
    echo Converting $basefile  ......
    fig2dev -L eps $file > $basefile.eps
done
echo Done converting
ls -l *fig *eps

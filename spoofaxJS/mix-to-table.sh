#!/bin/bash
export PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

pack-sdf -i syntax/js/StrategoJS.sdf -o lib/StrategoJS.def -Idef lib/StrategoMix.def --Include src-gen/syntax
sdf2table -t -i lib/StrategoJS.def -m js/StrategoJS -o lib/StrategoJS.tbl

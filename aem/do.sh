#! /bin/bash
LOCALPATH="~/.dotfiles/aem";
LOCALFILE=$LOCALPATH"/.bashrc";
TARGETFILE=$HOME"/.bashrc";

# Source global definitions
if [ -e $TARGETFILE ]; then
    (grep -q -F 'source '$LOCALPATH $TARGETFILE || echo 'source '$LOCALFILE >> $TARGETFILE) && (source $TARGETFILE && echo $LOCALPATH": Done!");
fi








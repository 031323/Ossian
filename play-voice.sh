#!/bin/bash

LANG=$1
SPEAKER=$2
text=$3

python2 ./scripts/speak.py -l $LANG -s $SPEAKER -play naive_01_nn  <<< $text

echo "Done."

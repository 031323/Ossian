#!/bin/bash

LANG=$1
SPEAKER=$2

rm -r ./train/$LANG/speakers/$SPEAKER/ ./voices/$LANG/$SPEAKER/


echo "Done."

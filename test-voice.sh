#!/bin/bash

LANG=$1
SPEAKER=$2
file=$3

python ./scripts/speak.py -l $LANG -s $SPEAKER -o ./test/wav/"$(date +"%Y_%m_%d_%I_%M_%p").wav" naive_01_nn ./test/txt/$file


echo "Done."

#!/bin/bash

LANG=$1
SPEAKER=$2

python2 ./scripts/train.py -s $SPEAKER -l $LANG naive_01_nn

export THEANO_FLAGS=""

python2 ./tools/merlin/src/run_merlin.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/duration_predictor/config.cfg

python2 ./tools/merlin/src/run_merlin.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/acoustic_predictor/config.cfg


python2 ./scripts/util/store_merlin_model.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/duration_predictor/config.cfg ./voices/$LANG/$SPEAKER/naive_01_nn/processors/duration_predictor

python2 ./scripts/util/store_merlin_model.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/acoustic_predictor/config.cfg ./voices/$LANG/$SPEAKER/naive_01_nn/processors/acoustic_predictor

echo "Training Done."

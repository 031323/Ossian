#!/bin/bash

LANG=$1
SPEAKER=$2

python ./scripts/train.py -s $SPEAKER -l $LANG naive_01_nn


./scripts/util/submit.sh ./tools/merlin/src/run_merlin.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/duration_predictor/config.cfg

./scripts/util/submit.sh ./tools/merlin/src/run_merlin.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/acoustic_predictor/config.cfg


./scripts/util/submit.sh ./scripts/util/store_merlin_model.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/duration_predictor/config.cfg ./voices/$LANG/$SPEAKER/naive_01_nn/processors/duration_predictor

./scripts/util/submit.sh ./scripts/util/store_merlin_model.py ./train/$LANG/speakers/$SPEAKER/naive_01_nn/processors/acoustic_predictor/config.cfg ./voices/$LANG/$SPEAKER/naive_01_nn/processors/acoustic_predictor

echo "Training Done."

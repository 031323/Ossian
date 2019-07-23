#!/bin/bash

sudo apt update; sudo apt upgrade -y

echo "Starting to install dependencies....."

sudo apt-get install clang libsndfile1-dev gsl-bin libgsl0-dev libconfig-dev sox

pip2 install numpy matplotlib scipy regex argparse lxml scikit-learn regex configobj bandmat theano sox --user


USR=demo1
PWD=p5zmisj5

echo "Compile Ossian......."

./scripts/setup_tools.sh $USR $PWD



echo "Installation completed."

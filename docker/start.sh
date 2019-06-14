#!/bin/sh
cd work
conda env create -f environment.yml
conda activate pdsimage
conda install -y nb_conda_kernels
jupyter lab

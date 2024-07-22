#!/bin/bash

# Ensure the necessary directories exist
mkdir -p $HOME/research/project/aligned $HOME/research/project/stacks

# Run each step of the pipeline
./align_and_convert.sh
./run_pstacks.sh
./create_cstacks.sh
./run_sstacks.sh
./calculate_population_stats.sh


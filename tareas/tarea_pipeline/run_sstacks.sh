#!/bin/bash

src=$HOME/research/project

files="sample_01
sample_02
sample_03"

# Compare each sample with the catalog
for file in $files 
do 
  #Compare each sample with the catalog to identify shared polymorphisms
  sstacks -g -p 36 -b 1 -c $src/stacks/batch_1 \
    -s $src/stacks/${file} \
    -o $src/stacks/ &>> $src/stacks/Log 
done


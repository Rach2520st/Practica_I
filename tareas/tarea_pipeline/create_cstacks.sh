#!/bin/bash

src=$HOME/research/project

files="sample_01
sample_02
sample_03"

# Create a list of files to supply to cstacks
samp="" 
for file in $files 
do 
  #Adds each sample file to the string samp in the format required by cstacks.
  samp+="-s $src/stacks/$file " 
done

# Build the catalog
cstacks -g -p 36 -b 1 -n 1 -o $src/stacks $samp &>> $src/stacks/Log


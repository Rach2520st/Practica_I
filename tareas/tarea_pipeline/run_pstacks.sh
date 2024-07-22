#!/bin/bash

src=$HOME/research/project

files="sample_01
sample_02
sample_03"

# Run Stacks on the gsnap data
#pstacks identifica y procesa los polimorfismos (SNPs) en los datos alineados.
i=1 
for file in $files 
do 
  pstacks -p 36 -t bam -m 3 -i $i \
    -f $src/aligned/${file}.bam \
    -o $src/stacks/ 
  let "i+=1" 
done


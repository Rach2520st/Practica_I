#!/bin/bash

src=$HOME/research/project

files="sample_01
sample_02
sample_03"

# Align with GSnap and convert to BAM
for file in $files
do
  gsnap -t 36 -n 1 -m 5 -i 2 --min-coverage=0.90 \
    -A sam -d gac_gen_broads1_e64 \
    -D ~/research/gsnap/gac_gen_broads1_e64 \
    $src/samples/${file}.fq > $src/aligned/${file}.sam
  #conver to the results .sam to .bam
  samtools view -b -S -o $src/aligned/${file}.bam $src/aligned/${file}.sam 
  rm $src/aligned/${file}.sam 
done


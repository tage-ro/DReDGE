#!/bin/bash -l
# USAGE: bash derep_genomes.sh <genomes directory> <output directory> <number of cores>

GENOMES=$1
OUT=$2
CORES=$3

skder -g ${GENOMES}/*/*.fna -o $OUT -i 95 -c $CORES

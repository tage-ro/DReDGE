#!/bin/bash -l
# USAGE: sketch_genomes.sh <dereplicated genomes directory> <output name> <compression> <cores>

GENOMES=$1
OUTPUT=$2
COMPRESS=$3
CORES=$4

sylph sketch ${GENOMES}/*.fna -c $COMPRESS -o $OUTPUT -t $CORES

#!/bin/bash -l
# USAGE: dl_genomes.sh <taxid> <output directory>

TAXON=$1
OUT=$2

datasets download genome taxon $TAXON --reference --dehydrated --filename genomes.zip
unzip genomes.zip -d $OUT
datasets rehydrate --directory $OUT/

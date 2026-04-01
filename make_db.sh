#!/bin/bash -l
# USAGE: /make_db.sh <taxid> <output directory> <cores>
TAXON=$1
OUTDIR=$2
CORES=$3

echo "Downloading genomes."

/dl_genomes.sh $TAXON $OUTDIR

echo "Genomes downloaded."
echo "Dereplicating genomes."

/derep_genomes.sh $OUTDIR/ncbi_dataset/data $OUTDIR/derep $CORES

echo "Genomes dereplicated."
echo "Sketching genomes."

/sketch_genomes.sh $OUTDIR/derep/Dereplicated_Representative_Genomes $OUTDIR/$TAXON 200 $CORES

echo "Genomes sketched."
echo "Finished. Sketched genome database is available as "$TAXON".syldb

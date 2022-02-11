#!/bin/bash -l

#SBATCH --job-name=alnForVis
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/run-log/aln-for-vis.log
#SBATCH --ntasks=1

enable_lmod
module load R

Rscript --vanilla /home/jsun/coding/git-lib/Dev-FGen-PAP/r/mapping/sortAndMore.R \
    --bamDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/trm-aln/data \
    --outDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/aln-for-vis \
    --binSize 30 \
    --normalizeUsing RPKM \
    --sleepTime 30 

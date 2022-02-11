#!/bin/bash -l

#SBATCH --job-name=trmAln
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/run-log/trmAln.log
#SBATCH --ntasks=1

enable_lmod
module load R

Rscript --vanilla /home/jsun/coding/git-lib/Dev-FGen-PAP/r/mapping/trimAlign.R \
    --dataInDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/mapping/data \
    --outDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/trm-aln \
    --mitSeqNames "chrMT;MT" \
    --trimPcrDup \
    --trimMit \
    --trimNonUniq \
    --sleepTime 30 

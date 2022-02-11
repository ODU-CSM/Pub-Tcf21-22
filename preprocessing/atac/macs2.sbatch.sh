#!/bin/bash -l

#SBATCH --job-name=callPeaks
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/run-log/call-peaks.log
#SBATCH --ntasks=1

enable_lmod
module load R

Rscript --vanilla /home/jsun/coding/git-lib/Dev-FGen-PAP/r/tardseq/peak/callPeaksByMacs2.R \
    --dataInDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/trm-aln/data \
    --outDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/peakar/peaks \
    --sleepTime 30 

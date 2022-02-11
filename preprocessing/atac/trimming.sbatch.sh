#!/bin/bash -l

#SBATCH --job-name=trim
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/run-log/trimgalore.log
#SBATCH --ntasks=1

enable_lmod
module load R

Rscript --vanilla /home/jsun/coding/git-lib/Dev-FGen-PAP/r/qc/trimByTrimGalore.R \
    --dataInDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/raw-data \
    --outDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/trimmed \
    --nTasksQc 8 \
    --sleepTime 10 \
    --clipR1 9 \
    --clipR2 9 \
    --nCores 4 \
    --paired 

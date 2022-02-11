#!/bin/bash -l

#SBATCH --job-name=qc
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/run-log/qc.log
#SBATCH --ntasks=1

enable_lmod
module load R

Rscript --vanilla /home/jsun/coding/git-lib/Dev-FGen-PAP/r/qc/qcByFastQC.R \
    --dataInDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/raw-data \
    --outDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/qc \
    --nTasks 12 \
    --sleepTime 30 \
    --paired 

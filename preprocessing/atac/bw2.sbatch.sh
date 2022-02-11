#!/bin/bash -l

#SBATCH --job-name=mapByBw2
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/run-log/bw2.log
#SBATCH --ntasks=1

enable_lmod
module load R

Rscript --vanilla /home/jsun/coding/git-lib/Dev-FGen-PAP/r/mapping/mapByBw2.R \
    --dataInDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/trimmed/data \
    --outDir /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/atac-092721/mapping \
    --idxBase /scratch-lustre/jsun/datasets/genomics/ref-genome/mouse/GRCm38/ensembl/bowtie2-index/Mus_musculus.GRCm38 \
    --maxins 2000 \
    --nTasks 8 \
    --sleepTime 30 

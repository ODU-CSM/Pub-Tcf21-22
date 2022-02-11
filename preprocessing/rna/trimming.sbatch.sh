#!/bin/bash -l

#SBATCH --job-name=trim.A9
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/trimmed/run-log/A9.log

#SBATCH -c 15

enable_lmod
module load container_env trim-galore

crun.trim-galore trim_galore --trim-n \
    --quality 20 \
    --stringency  1 \
    --paired \
    --clip_R1  9 \
    --clip_R2  9 \
    --cores 4 \
    --retain_unpaired \
    --fastqc_args "--noextract -o /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/trimmed/fastqc-report" \
    -o /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/trimmed/data/A9 \
     /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A9/A9-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A9/A9-2.fq.gz 

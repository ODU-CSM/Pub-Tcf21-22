#!/bin/bash -l

#SBATCH --job-name=fastQC
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/qc/run-log/fastqc.log
#SBATCH --cpus-per-task=12

enable_lmod
module load container_env fastqc

crun.fastqc fastqc -o /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/qc/fastqc-report --noextract -f fastq -t 12 \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A10/A10-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A10/A10-2.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A13/A13-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A13/A13-2.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A14/A14-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A14/A14-2.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A15/A15-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A15/A15-2.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A16/A16-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A16/A16-2.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A9/A9-1.fq.gz \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/raw-data/A9/A9-2.fq.gz 

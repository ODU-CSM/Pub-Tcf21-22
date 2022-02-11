#!/bin/bash -l

#SBATCH --job-name=expr.A9
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/expr/run-log/A9.log
#SBATCH --ntasks=8

enable_lmod
module load rsem/1.3
module load R

rsem-calculate-expression --p 8 \
    --alignments --append-names --estimate-rspd \
    --paired-end \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/mapping/star-pass2/data/A9/Aligned.toTranscriptome.out.bam \
    /scratch-lustre/jsun/datasets/genomics/ref-genome/mouse/GRCm38/ensembl/rsem-index/rsem \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/expr/data/A9/A9 

rsem-plot-model /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/expr/data/A9/A9 \
    /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/expr/data/A9/A9-stat.pdf \

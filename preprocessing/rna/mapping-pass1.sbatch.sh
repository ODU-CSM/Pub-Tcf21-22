#!/bin/bash -l

#SBATCH --job-name=map.A9
#SBATCH --output=/scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/mapping/star-pass1/run-log/A9.log

#SBATCH --ntasks=8

enable_lmod
module load star

STAR --runThreadN 8 \
    --genomeDir /scratch-lustre/jsun/datasets/genomics/ref-genome/mouse/GRCm38/ensembl/star-index \
    --readFilesIn /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/trimmed/data/A9/A9-1.fq.gz /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/trimmed/data/A9/A9-2.fq.gz \
    --readFilesCommand zcat \
    --outFilterType BySJout \
    --outFilterMultimapNmax 20 \
    --alignSJoverhangMin 8 \
    --alignSJDBoverhangMin 1 \
    --outFilterMismatchNmax 999 \
    --outFilterMismatchNoverReadLmax 0.04 \
    --alignIntronMin 20 \
    --alignIntronMax 1000000 \
    --alignMatesGapMax 1000000 \
    --chimSegmentMin 25 \
    --chimOutType Junctions \
    --chimMultimapNmax 20 \
    --peOverlapNbasesMin 20 \
    --peOverlapMMp 0.05 \
    --outFileNamePrefix /scratch-lustre/ml-csm/projects/tissue-regen/data/mouse/fat/rna-122720/mapping/star-pass1/data/A9/ \
    --outSAMattributes Standard \
    --outSAMtype BAM Unsorted SortedByCoordinate \
    --quantMode TranscriptomeSAM \
    --outSAMattrIHstart 0 \
    --outSAMstrandField intronMotif \
    --outFilterIntronMotifs RemoveNoncanonical 

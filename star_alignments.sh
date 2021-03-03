#!/usr/bin/env bash

###############################################################################
# SUM229
###############################################################################

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_Bort_R1_S3_R1_001.fastq.gz  \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_Bort/
samtools index -@ 10 results/bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_DMSO_R1_S1_R1_001.fastq.gz  \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_DMSO/
samtools index -@ 10 results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_MK2206_R1_S4_R1_001.fastq.gz \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_MK2206/
samtools index -@ 10 results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_Tram_R1_S2_R1_001.fastq.gz \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_Tram/
samtools index -@ 10 results/bam_files/SUM229_pos_Tram/Aligned.sortedByCoord.out.bam

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_DMSO_in_R1_S5_R1_001.fastq.gz \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_input_DMSO_1/
samtools index -@ 10 results/bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_DMSO_in_R2_S6_R1_001.fastq.gz \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_input_DMSO_2/
samtools index -@ 10 results/bam_files/SUM229_pos_input_DMSO_2/Aligned.sortedByCoord.out.bam

STAR --runThreadN 10 --genomeDir /media/Data/Reference_Data_Sets/human_genome/STAR_hg38_index/ \
	--readFilesIn raw_data/batch_01/SUM229_pos_DMSO_in_R3_S7_R1_001.fastq.gz \
	--readFilesCommand zcat --outSAMtype BAM SortedByCoordinate --bamRemoveDuplicatesType UniqueIdentical \
	--outFileNamePrefix results/bam_files/SUM229_pos_input_DMSO_3/
samtools index -@ 10 results/bam_files/SUM229_pos_input_DMSO_3/Aligned.sortedByCoord.out.bam

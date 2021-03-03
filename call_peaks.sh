#!/usr/bin/env bash

#assuming you have installed MACS2 with conda, first activate the environment
# conda activate MACS2

macs2 callpeak --treatment bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--control bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
	--outdir peak_calling/SUM229_DMSO/ -n DMSO

time macs2 callpeak --treatment bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam \
	--control bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
	--outdir peak_calling/SUM229_Bort/ -n Bort

time macs2 callpeak --treatment bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
	--control bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
	--outdir peak_calling/SUM229_MK2206/ -n MK2206

time macs2 callpeak --treatment bam_files/SUM229_pos_Tram/Aligned.sortedByCoord.out.bam \
	--control bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
	--outdir peak_calling/SUM229_Tram/ -n Tram

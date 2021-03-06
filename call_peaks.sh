#!/usr/bin/env bash

#assuming you have installed MACS2 with conda, first activate the environment
# conda activate MACS2

# macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_DMSO/ -n DMSO
# 
# macs2 callpeak --treatment results/bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_Bort/ -n Bort
# 
# time macs2 callpeak --treatment results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_MK2206/ -n MK2206
# 
# time macs2 callpeak --treatment results/bam_files/SUM229_pos_Tram/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_input_DMSO_1/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_Tram/ -n Tram

# macs2 callpeak --treatment results/bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_Bort_vs_DMSO/ -n Bort_gain
# 
# macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_Bort_vs_DMSO/ -n Bort_lost
# 
# macs2 callpeak --treatment results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_MK2206_vs_DMSO/ -n MK2206_gain
# 
# macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_MK2206_vs_DMSO/ -n MK2206_lost
# 
# macs2 callpeak --treatment results/bam_files/SUM229_pos_Tram/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_Tram_vs_DMSO/ -n Tram_gain
# 
# macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
# 	--control results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
# 	--outdir results/peak_calling/SUM229_Tram_vs_DMSO/ -n Tram_lost

macs2 callpeak --treatment results/bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam \
	--control results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--outdir results/peak_calling/SUM229_Bort_vs_DMSO_Goulet/ -n Bort_gain\
	--broad --max-gap 1000

macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--control results/bam_files/SUM229_pos_Bort/Aligned.sortedByCoord.out.bam \
	--outdir results/peak_calling/SUM229_Bort_vs_DMSO_Goulet/ -n Bort_lost \
	--broad --max-gap 1000


macs2 callpeak --treatment results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
	--control results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--outdir results/peak_calling/SUM229_MK2206_vs_DMSO_Goulet/ -n MK2206_gain \
	--broad --max-gap 1000

macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--control results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
	--outdir results/peak_calling/SUM229_MK2206_vs_DMSO_Goulet/ -n MK2206_lost \
	--broad --max-gap 1000

macs2 callpeak --treatment results/bam_files/SUM229_pos_Tram/Aligned.sortedByCoord.out.bam \
	--control results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--outdir results/peak_calling/SUM229_Tram_vs_DMSO_Goulet/ -n Tram_gain \
	--broad --max-gap 1000

macs2 callpeak --treatment results/bam_files/SUM229_pos_DMSO/Aligned.sortedByCoord.out.bam \
	--control results/bam_files/SUM229_pos_MK2206/Aligned.sortedByCoord.out.bam \
	--outdir results/peak_calling/SUM229_Tram_vs_DMSO_Goulet/ -n Tram_lost \
	--broad --max-gap 1000

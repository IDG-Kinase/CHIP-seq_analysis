# CHIP-seq Analysis

This repository contains scripts used to process and analyze CHIP-seq data. The code to process the raw data can is saved as a set of bash scripts:

  * star_alignments.sh: A set of STAR commands used to align the reads to the genome
  * call_peaks.sh: A set of MACS2 commands that find the peaks in each of the data sets
  * find_differential_peaks.sh: A set of bedtools commands that pulls out the peaks present in the data after comparison against the control files

There is also a R script that converts the alignment results to bigwig files for easier visualization with IGV.

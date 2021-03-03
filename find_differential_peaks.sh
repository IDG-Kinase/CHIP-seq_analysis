#!/usr/bin/env bash

mkdir -p results/differential_peaks


bedtools intersect -a peak_calling/SUM229_Bort/Bort_peaks.narrowPeak -b peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -v > results/differential_peaks/SUM229_Bort_gained.narrowPeak
bedtools intersect -a peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -b peak_calling/SUM229_Bort/Bort_peaks.narrowPeak -v > results/differential_peaks/SUM229_Bort_lost.narrowPeak

bedtools intersect -a peak_calling/SUM229_MK2206/MK2206_peaks.narrowPeak -b peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -v > results/differential_peaks/SUM229_MK2206_gained.narrowPeak
bedtools intersect -a peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -b peak_calling/SUM229_MK2206/MK2206_peaks.narrowPeak  -v > results/differential_peaks/SUM229_MK2206_lost.narrowPeak

bedtools intersect -a peak_calling/SUM229_Tram/Tram_peaks.narrowPeak -b peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -v > results/differential_peaks/SUM229_Tram_gained.narrowPeak
bedtools intersect -a peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -b peak_calling/SUM229_Tram/Tram_peaks.narrowPeak -v > results/differential_peaks/SUM229_Tram_lost.narrowPeak

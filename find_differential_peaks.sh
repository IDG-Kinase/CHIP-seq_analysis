#!/usr/bin/env bash

mkdir -p differential_peaks


bedtools intersect -a peak_calling/SUM229_Bort/Bort_peaks.narrowPeak -b peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -v > differential_peaks/SUM229_Bort.narrowPeak

bedtools intersect -a peak_calling/SUM229_MK2206/MK2206_peaks.narrowPeak -b peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -v > differential_peaks/SUM229_MK2206.narrowPeak

bedtools intersect -a peak_calling/SUM229_Tram/Tram_peaks.narrowPeak -b peak_calling/SUM229_DMSO/DMSO_peaks.narrowPeak -v > differential_peaks/SUM229_Tram.narrowPeak

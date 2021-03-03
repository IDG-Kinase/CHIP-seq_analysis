#!/usr/bin/env bash

mkdir -p differential_peaks


bedtools intersect -a peak_calling/SUM229_Bort/NA_summits.bed -b peak_calling/SUM229_DMSO/NA_summits.bed -v > differential_peaks/SUM229_Bort.bed
bedtools intersect -a peak_calling/SUM229_MK2206/NA_summits.bed -b peak_calling/SUM229_DMSO/NA_summits.bed -v > differential_peaks/SUM229_MK2206.bed
bedtools intersect -a peak_calling/SUM229_Tram/NA_summits.bed -b peak_calling/SUM229_DMSO/NA_summits.bed -v > differential_peaks/SUM229_Tram.bed

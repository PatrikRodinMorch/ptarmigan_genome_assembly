#!/bin/bash -l
 

ml bioinfo-tools
ml BEDTools

bamToBed -i R1_R2_combined_p.bam > primary.bed
sort -k 4 primary.bed > tmp && mv tmp primary.bed


bamToBed -i P15307_101_S1_L003_R1_2_001.pair.filt.bam > primary_HiCUP_filtered.bed
sort -k 4 primary_HiCUP_filtered.bed > tmp && mv tmp primary_HiCUP_filtered.bed

bamToBed -i P15307_101_S1_L003_R1_2_001.dedup.reheader.bam > primary_HiCUP_dedup.bed
sort -k 4 primary_HiCUP_dedup.bed > tmp && mv tmp primary_HiCUP_dedup.bed

bamToBed -i R1_R2_combined_p.sort.dp.sort_n.bam > primary_arima_dedup.bed
sort -k 4 primary_arima_dedup.bed > tmp && mv tmp primary_arima_dedup.bed


#!/bin/bash -l


conda activate pretext

bash pretext.sh /crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/ARIMA_mapping_pipeline/combined/dedup_final/sort_dedup/R1_R2.asm.sort.dp.sort_n.bam

conda deactivate

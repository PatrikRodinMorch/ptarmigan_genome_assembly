#!/bin/bash -l


module load bioinfo-tools
module load samtools/1.9
module load picard/2.10.3

bash dedup_arima.sh ../R1_R2.asm.bam 20

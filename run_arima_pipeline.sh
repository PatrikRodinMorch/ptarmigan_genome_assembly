#!/bin/bash -l



module load bioinfo-tools
module load bwa
module load samtools

cp /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/Scaffolding/salsa2_2.3/primary/default/scaffolds_salsa2_primary_arima_dedup_myes/scaffolds_FINAL.fasta LagMut1.asm.fasta

bwa index LagMut1.asm.fasta
samtools faidx LagMut1.asm.fasta

bash arima_mapping_pipeline.sh \
/crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/02-FASTQ/201016_A00621_0292_BHGH35DSXY/P15307_102_S2_L003_R1_001.fastq.gz /crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/02-FASTQ/201016_A00621_0292_BHGH35DSXY/P15307_102_S2_L003_R2_001.fastq.gz \
RP_arima_pipeline_hifi_HiC_primary \
RP_genome_purged_p.fa \
/crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/ARIMA_mapping_pipeline \
-B8

bash arima_mapping_pipeline.sh \
/crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/02-FASTQ/201016_A00621_0292_BHGH35DSXY/P15307_102_S2_L003_R1_001.fastq.gz /crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/02-FASTQ/201016_A00621_0292_BHGH35DSXY/P15307_102_S2_L003_R2_001.fastq.gz \
RP_arima_pipeline_hifi_HiC_alternative \
RP_genome_purged_a.fa \
/crex/proj/snic2021-6-165/Hi-C/P15307/P15307_102/ARIMA_mapping_pipeline \
-B8


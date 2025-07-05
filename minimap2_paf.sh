#!/bin/bash -l
 

module load bioinfo-tools
module load samtools
module load minimap2/2.17-r941

minimap2 -x asm20 -t 20 ptarm_hifiasm_default.p_ctg.fa.idx /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210105_123141.hifi_reads.fastq.gz | gzip -c - > Read1_123141.p_ctg.read.paf.gz
minimap2 -x asm20 -t 20 ptarm_hifiasm_default.a_ctg.fa.idx /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210105_123141.hifi_reads.fastq.gz | gzip -c - > Read1_123141.a_ctg.read.paf.gz

minimap2 -x asm20 -t 20 ptarm_hifiasm_default.p_ctg.fa.idx /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210108_110628.hifi_reads.fastq.gz | gzip -c - > Read2_110628.p_ctg.read.paf.gz
minimap2 -x asm20 -t 20 ptarm_hifiasm_default.a_ctg.fa.idx /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210108_110628.hifi_reads.fastq.gz | gzip -c - > Read2_110628.a_ctg.read.paf.gz

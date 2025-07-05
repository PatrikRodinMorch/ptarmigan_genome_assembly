#!/bin/bash -l



/domus/h1/patrikro/hifiasm/./hifiasm -o ptarm_hifiasm_default.asm --primary -t 20 /crex/proj/uppstore2018131/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210105_123141.hifi_reads.fastq.gz /crex/proj/uppstore2018131/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210108_110628.hifi_reads.fastq.gz

awk '/^S/{print ">"$2;print $3}' ptarm_hifiasm_default.asm.p_ctg.gfa > ptarm_hifiasm_default.p_ctg.fa
awk '/^S/{print ">"$2;print $3}' ptarm_hifiasm_default.asm.a_ctg.gfa > ptarm_hifiasm_default.a_ctg.fa

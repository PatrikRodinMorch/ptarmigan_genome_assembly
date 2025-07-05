#!/bin/bash -l



meryl k=21 count output read1.meryl /crex/proj/uppstore2018131/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210105_123141.hifi_reads.fastq.gz
meryl k=21 count output read2.meryl /crex/proj/uppstore2018131/PacBio_HiFi/pt_050/hifidata/pt_050_001/m64077_210108_110628.hifi_reads.fastq.gz


meryl union-sum output read_combined.meryl read1.meryl read2.meryl

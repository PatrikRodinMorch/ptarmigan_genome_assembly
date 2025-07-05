#!/bin/bash -l


module load bioinfo-tools
module load R/4.0.4
module load R_packages/4.0.4
module load samtools
module load BEDTools

$MERQURY/merqury.sh ../../../../Kmer_analysis/read_combined.meryl ../ptarm_hifiasm_default.p_ctg.fa ../ptarm_hifiasm_default.a_ctg.fa hifiasm_PRM_merqury

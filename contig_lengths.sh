#!/bin/bash -l


module load bioinfo-tools
module load samtools

samtools faidx ../../../PRM_assembly/hifiasm/default/purge_dups/default/primary/purged_p.fa
samtools faidx /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/PRM_assembly/hifiasm/default/ptarm_hifiasm_default.p_ctg.fa


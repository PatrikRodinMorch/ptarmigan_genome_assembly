#!/bin/bash -l
 

module load bioinfo-tools
module load samtools
module load minimap2/2.17-r941

bash purge.sh ../../ptarm_hifiasm_default.p_ctg.fa
bash purge.sh ../../ptarm_hifiasm_default.a_ctg.fa


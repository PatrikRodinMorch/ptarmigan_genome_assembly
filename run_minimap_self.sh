#!/bin/bash -l

module load bioinfo-tools
module load samtools
module load minimap2/2.17-r941

bash minimap2_self.sh ptarm_hifiasm_default.p_ctg.fa
bash minimap2_self.sh ptarm_hifiasm_default.a_ctg.fa


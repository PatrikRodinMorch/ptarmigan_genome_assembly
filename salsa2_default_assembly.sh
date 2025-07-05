#!/bin/bash -l
 


pyenv global 2.7.18

python /home/patrikro/SALSA-2.3/run_pipeline.py -a /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/PRM_assembly/hifiasm/default/ptarm_hifiasm_default.p_ctg.fa \
-l /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/PRM_assembly/hifiasm/default/ptarm_hifiasm_default.p_ctg.fa.fai \
-b /crex/proj/snic2021-6-165/PacBio_HiFi/pt_050/Scaffolding/salsa2/primary/primary.bed \
-e GATC \
-c 10000 \
-i 5 \
-o scaffolds_salsa2_primary_C10Kb_i5

pyenv global 3.7.2


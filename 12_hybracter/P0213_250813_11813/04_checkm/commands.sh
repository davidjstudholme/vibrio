 ln -s ../02_hybracter/hybracter_out/FINAL_OUTPUT/* .
 ln -s */*final.fasta .


 conda create -n checkm_env
 conda activate checkm_env
 conda install bioconda::checkm-genome

 
 
checkm -h > checkm.version.txt
conda list -n checkm_env > checkm_env_packages.txt
conda env export > checkm_env.yaml


checkm taxonomy_wf genus Vibrio . checkm_out -x .fasta

for i in 1 2 3 4 5 6 7 8 ; do
    echo $i
    checkm qa --out_format $i checkm_out/Vibrio.ms checkm_out > checkm_qa.$i.txt
done

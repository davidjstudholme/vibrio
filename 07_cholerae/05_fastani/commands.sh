### PRepare lists of query and reference genomes
ls ../01_genomes/GCA_*.fna > ref_list.txt 
ls ../01_genomes/11813_EXE_05_2024_A_PBC74148_final.fasta > query_list.txt

### FastANI has already been installed via Conda
conda activate fastani_env
conda list -n fastani_env > fastani_env_packages.txt
conda env export > fastani_env.yaml

fastANI --ql query_list.txt --rl ref_list.txt -o cholerae-fastANI.short.out -t 6 --visualize --matrix

### PRepare lists of query and reference genomes
ls ../01_genomes/GCA_*.fna > ref_list.txt 
ls ../01_genomes/11813_EXE_05_2024_A_PBC74148_final.fasta > query_list.txt

split -l 1000 -d ref_list.txt chunk_

### FastANI has already been installed via Conda
conda activate fastani_env
conda list -n fastani_env > fastani_env_packages.txt
conda env export > fastani_env.yaml

for i in chunk_*; do
    echo $i
    fastANI --ql query_list.txt --rl $i -o cholerae-fastANI.$i.short.out -t 6 --visualize --matrix
done
cat cholerae-fastANI.chunk_*.short.out > cholerae-fastANI.combined.short.out

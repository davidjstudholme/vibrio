


### Assume that we already created a Conda environment and installed all required software
### conda activate unicycler_env
conda env export > unicycler_env.yaml
filtlong --version > filtlong-version.txt


for i in 11671_EXE_02_2024_3B1 11671_EXE_02_2024_3B2 11671_EXE_04_2024_1A1 11671_EXE_04_2024_1B1 11671_EXE_04_2024_2B3 11671_EXE_19_2024_C 11671_EXE_22_2024_B 11671_EXE_23_2024_1 11671_EXE_25_2024_H 11671_EXE_26_2024_C 11671_EXE_45_2024_E 11671_Guernsey; do
    echo $i
    filtlong --min_length 1000 --keep_percent 95 ../03_ont_fastq/$i.fastq.gz | gzip > $i.filtlong.fastq.gz
done


### Assume that we already created a Conda environment and installed all required software
### conda activate unicycler_env
conda env export > unicycler_env.yaml

### Hybrid assemblies
unicycler -1 ../02_illumina_trimmed/11671_EXE_02_2024_3B1_S469_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_02_2024_3B1_S469_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_02_2024_3B1.filtlong.fastq.gz -o 11671_EXE_02_2024_3B1.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_02_2024_3B2_S470_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_02_2024_3B2_S470_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_02_2024_3B2.filtlong.fastq.gz -o 11671_EXE_02_2024_3B2.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_04_2024_1A1_S467_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_04_2024_1A1_S467_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_04_2024_1A1.filtlong.fastq.gz -o 11671_EXE_04_2024_1A1.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_04_2024_1B1_S466_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_04_2024_1B1_S466_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_04_2024_1B1.filtlong.fastq.gz -o 11671_EXE_04_2024_1B1.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_04_2024_2B3_S468_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_04_2024_2B3_S468_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_04_2024_2B3.filtlong.fastq.gz -o 11671_EXE_04_2024_2B3.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_19_2024_C_S460_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_19_2024_C_S460_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_19_2024_C.filtlong.fastq.gz -o 11671_EXE_19_2024_C.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_22_2024_B_S461_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_22_2024_B_S461_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_22_2024_B.filtlong.fastq.gz -o 11671_EXE_22_2024_B.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_23_2024_1_S464_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_23_2024_1_S464_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_23_2024_1.filtlong.fastq.gz -o 11671_EXE_23_2024_1.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_25_2024_H_S462_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_25_2024_H_S462_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_25_2024_H.filtlong.fastq.gz -o 11671_EXE_25_2024_H.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_26_2024_C_S463_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_26_2024_C_S463_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_26_2024_C.filtlong.fastq.gz -o 11671_EXE_26_2024_C.unicycler

unicycler -1 ../02_illumina_trimmed/11671_EXE_45_2024_E_S465_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_45_2024_E_S465_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_EXE_45_2024_E.filtlong.fastq.gz -o 11671_EXE_45_2024_E.unicycler

unicycler -1 ../02_illumina_trimmed/11671_Guernsey_S471_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_Guernsey_S471_R2_001_val_2.fq.gz -l ../04_ont_trimmed/11671_Guernsey.filtlong.fastq.gz -o 11671_Guernsey.unicycler

### Illumina-only assemblies
unicycler -1 ../02_illumina_trimmed/11671_EXE_15_2024_J_S459_R1_001_val_1.fq.gz -2 ../02_illumina_trimmed/11671_EXE_15_2024_J_S459_R2_001_val_2.fq.gz -o EXE_15_2024_J.unicycler

unicycler -1 ../02_illumina_trimmed/EXE07_2023A1_EKDN240029493-1A_22KLLLLT3_L8_1_val_1.fq.gz -2 ../02_illumina_trimmed/EXE07_2023A1_EKDN240029493-1A_22KLLLLT3_L8_2_val_2.fq.gz -o EXE07_2023A1.unicycler

unicycler -1 ../02_illumina_trimmed/EXE07_2023A4_EKDN240029497-1A_22KLLLLT3_L8_1_val_1.fq.gz -2 ../02_illumina_trimmed/EXE07_2023A4_EKDN240029497-1A_22KLLLLT3_L8_2_val_2.fq.gz -o EXE07_2023A4.unicycler

unicycler -1 ../02_illumina_trimmed/EXE08_2023B5_EKDN240029494-1A_22KLLLLT3_L8_1_val_1.fq.gz -2 ../02_illumina_trimmed/EXE08_2023B5_EKDN240029494-1A_22KLLLLT3_L8_2_val_2.fq.gz -o EXE08_2023B5.unicycler

unicycler -1 ../02_illumina_trimmed/EXE09_2023D7_EKDN240029495-1A_22KLLLLT3_L8_1_val_1.fq.gz -2 ../02_illumina_trimmed/EXE09_2023D7_EKDN240029495-1A_22KLLLLT3_L8_2_val_2.fq.gz -o EXE09_2023D7.unicycler

unicycler -1 ../02_illumina_trimmed/EXE10_2023G3_EKDN240029496-1A_22KLLLLT3_L8_1_val_1.fq.gz -2 ../02_illumina_trimmed/EXE10_2023G3_EKDN240029496-1A_22KLLLLT3_L8_2_val_2.fq.gz  -o EXE10_2023G3.unicycler

### Make symbolic links
for i in 11671_EXE_02_2024_3B1 11671_EXE_02_2024_3B2 11671_EXE_04_2024_1A1 11671_EXE_04_2024_1B1 11671_EXE_04_2024_2B3 11671_EXE_04_2024_2B3 11671_EXE_19_2024_C 11671_EXE_22_2024_B 11671_EXE_23_2024_1 11671_EXE_25_2024_H 11671_EXE_26_2024_C 11671_EXE_45_2024_E 11671_Guernsey EXE07_2023A1 EXE07_2023A4 EXE08_2023B5 EXE09_2023D7 EXE10_2023G3 EXE_15_2024_J; do echo $i; ln -s  $i.unicycler/assembly.fasta ./$i.unicycler.fasta  ; done


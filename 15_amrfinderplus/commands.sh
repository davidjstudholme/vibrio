conda activate amrfinder_env

amrfinder --version > amrfinder-version.txt

for f in *.fasta
do
    base=$(basename "$f" .fasta)

    amrfinder \
        -n "$f" \
        -o amrfinder_results/${base}.tsv
done


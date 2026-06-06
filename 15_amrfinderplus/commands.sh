conda activate amrfinderplus_env

for f in *.fasta
do
    base=$(basename "$f" .fasta)

    amrfinder \
        -n "$f" \
        -o amrfinder_results/${base}.tsv
done


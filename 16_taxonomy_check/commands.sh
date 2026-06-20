### Download NCBI's datasets utility:
curl -o datasets 'https://ftp.ncbi.nlm.nih.gov/pub/datasets/command-line/LATEST/linux-amd64/datasets'
chmod u+x datasets

### Use NCBI's datasets utility to download the assembly metadata table:
./datasets summary genome taxon vibrio --as-json-lines > vibrio.jsonl

### Get assemblies that best match V. diabolicus
{
  echo -e "accession\torganism_name\ttax_id\tbest_match_organism\tani\tbest_type_assembly\tbest_match_category\tmatch_status\ttaxonomy_check_status\tsubmitted_organism"
  jq -r '
    select(.average_nucleotide_identity.best_ani_match.organism_name == "Vibrio diabolicus") |
    [
      .accession,
      .organism.organism_name,
      .organism.tax_id,
      .average_nucleotide_identity.best_ani_match.organism_name,
      .average_nucleotide_identity.best_ani_match.ani,
      .average_nucleotide_identity.best_ani_match.assembly,
      .average_nucleotide_identity.best_ani_match.category,
      .average_nucleotide_identity.match_status,
      .average_nucleotide_identity.taxonomy_check_status,
      .average_nucleotide_identity.submitted_organism
    ] | @tsv
  ' vibrio.jsonl
} > best_ani_match_Vibrio_diabolicus.tsv













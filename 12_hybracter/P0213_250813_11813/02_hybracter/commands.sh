conda create -n hybracter_env

conda activate hybracter_env
conda install bioconda::hybracter
hybracter install

conda list -n hybracter_env > hybracter_env_packages.txt
conda env export > hybracter_env.yaml

hybracter long -i hybracter.input.csv
hybracter long -i hybracter.input.extra.csv -t 12

#!/bin/bash

set -e

if [ -f /run/secrets/GITHUB_PAT ]; then
    GITHUB_PAT=$(cat /run/secrets/GITHUB_PAT)
    export GITHUB_PAT
fi

if [ -n "$GITHUB_PAT" ]; then
    echo "GITHUB_PAT is set (length=$(echo -n "$GITHUB_PAT" | wc -c))"
else
    echo "GITHUB_PAT NOT set"
fi

# system: apt.txt, tools, rProject's system libraries
bash install-apt.sh
bash tools.sh
bash rproject_sys.sh

# R: rProject, TinyTeX, CRAN (cran.txt), source builds, GitHub (github.txt)
bash rproject.sh
bash tinytex.sh
bash install-cran.sh
bash dynr.sh
bash torch.sh
bash install-github.sh

# Mplus demo, container metadata
bash mpdemo.sh
bash custom.sh

# every package in cran.txt and github.txt loads
bash check.sh

bash post.sh

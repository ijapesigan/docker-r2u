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

bash ubuntu_sys_pkg.sh
bash ubuntu_cran_pkg.sh
bash rproject_sys.sh
bash rproject.sh
bash tinytex.sh
bash custom.sh
bash lavaan.sh
bash openmx_sys.sh
bash openmx_deps.sh
bash openmx.sh
bash metasem.sh
bash symsem.sh
bash semlbci.sh
bash semmcci.sh
bash longmi.sh
bash mpdemo.sh
bash mplusautomation.sh
# bash semplot.sh
bash dynr_sys.sh
bash dynr.sh
bash ctsem.sh
bash simstatespace.sh
bash bootstatespace.sh
bash dynutils.sh
bash ctmed.sh
bash fitdtvarmx.sh
# bash fitctvarmx.sh
bash metavar.sh
bash mlvar.sh
bash rstan.sh
bash rjags_sys.sh
bash rjags.sh
bash r2jags.sh
bash brms.sh
bash github_pkg.sh
bash post.sh

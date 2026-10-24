#!/bin/bash

set -e

# dynr from GitHub, built from source

function apt_install() {
    if ! dpkg -s "$@" >/dev/null 2>&1; then
        if [ "$(find /var/lib/apt/lists/* | wc -l)" = "0" ]; then
            apt-get update
        fi
        apt-get install -y --no-install-recommends "$@"
    fi
}

git clone https://github.com/mhunter1/dynr.git

# its R dependencies, read from its DESCRIPTION (its Version is a
# placeholder, so pak cannot resolve dynr itself)
install2.r --error --skipinstalled pak remotes
deps="$(Rscript -e "writeLines(remotes::local_package_deps('dynr'))")"
mapfile -t deps_pkgs <<< "${deps}"

# system dependencies: GSL for dynr's configure (not in its DESCRIPTION),
# and those of its R dependencies and its SystemRequirements, looked up by
# pak (the r-hub system requirements database); apt installs them;
# skipped without apt
if command -v apt-get > /dev/null 2>&1; then
    apt_install libgsl-dev
    sys="$(Rscript -e "spec <- read.dcf('dynr/DESCRIPTION', fields = 'SystemRequirements')[1, 1]; own <- if (is.na(spec)) NULL else unlist(lapply(pak::sysreqs_db_match(spec), function(x) unlist(x\$system_packages))); writeLines(as.character(unique(c(own, unlist(pak::pkg_sysreqs(commandArgs(TRUE))\$packages\$system_packages)))))" "${deps_pkgs[@]}")"
    if [ -n "${sys}" ]; then
        mapfile -t sys_pkgs <<< "${sys}"
        apt_install "${sys_pkgs[@]}"
    fi
fi

# the R dependencies with install2.r, then dynr from source
install2.r --error --skipinstalled -n -1 "${deps_pkgs[@]}"
cd dynr
./configure
make clean install
cd ..
rm -rf dynr

R -e "demo('LinearSDE', package = 'dynr')"
rm -f LinearSDE.* Rplots.pdf

echo -e "\nInstall dynr, done!"

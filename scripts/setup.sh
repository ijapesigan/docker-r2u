#!/bin/bash

set -e

bash ubuntu_sys_pkg.sh
bash ubuntu_cran_pkg.sh
bash rproject.sh
bash github_pkg.sh
bash tinytex.sh
bash custom.sh
bash lavaan.sh
bash openmx_sys.sh
bash openmx.sh
bash metasem.sh
bash symsem.sh
bash semlbci.sh
bash semmcci.sh
bash longmi.sh
bash dynr_sys.sh
bash dynr.sh
bash mpdemo.sh
bash post.sh

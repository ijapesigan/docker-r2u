#!/bin/bash

set -e

#!/bin/bash

set -e

# symSEM dependencies
install2.r --error --skipinstalled -n -1 \
    caracas

# metaSEM and OpenMx are installed using metasem.sh and openmx.sh

# symSEM
install2.r --error --skipinstalled -n -1 \
    symSEM


R -e "library(symSEM)"

echo -e "\nInstall symSEM, done!"

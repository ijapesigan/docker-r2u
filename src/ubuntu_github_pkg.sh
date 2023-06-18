#!/bin/bash

set -e

# development packages from GitHub
installGithub.r                   \
  "rstudio/tinytex"               \
  "r-lib/cli"                     \
  "r-lib/devtools"                \
  "r-hub/rhub"                    \                    
  "jeksterslab/rProject"          \
  "jeksterslab/semmcci"           \
  "jeksterslab/betaDelta"         \
  "jeksterslab/betaSandwich"      \
  "jeksterslab/betaNB"            \
  "jeksterslab/betaMC"

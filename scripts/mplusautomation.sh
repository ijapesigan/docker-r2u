#!/bin/bash

set -e

# mplusautomation
install2.r --error --skipinstalled -n -1 \
    MplusAutomation


R -e "library(MplusAutomation)"

echo -e "\nInstall MplusAutomation, done!"

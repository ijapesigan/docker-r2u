#!/bin/bash

set -e

# Clean up
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/downloaded_packages

# Installation information
echo -e "Session information...\n"
R -q -e "sessionInfo()"
echo -e "Installed packages...\n"
R -q -e "unname(installed.packages()[, 1])"
cat -e "/srv/build/CONTAINER_RELEASE_MSG"
echo -e "\nBuild done!"

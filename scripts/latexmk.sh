#!/bin/bash

set -e

R -e "tinytex::tlmgr_install('latexmk')"

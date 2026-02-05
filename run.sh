#!/bin/sh
set -e
echo "Running analysis..."
"/c/Program Files/R/R-4.5.2/bin/Rscript.exe" code/01_analysis.R
echo "Done."

#!/usr/bin/env bash
set -euo pipefail

echo "Running pipeline..."

# Prefer Rscript on PATH (Binder/Linux). Fallback to Windows Git Bash path.
if command -v Rscript >/dev/null 2>&1; then
  RSCRIPT="Rscript"
else
  RSCRIPT="/c/Program Files/R/R-4.5.2/bin/Rscript.exe"
fi

# 0) environment info (creates output/session_info.txt)
"$RSCRIPT" code/00_session_info.R

# 1) analysis
"$RSCRIPT" code/01_analysis.R

echo "Done."
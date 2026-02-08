# Reproducible Project (Course Assignment D1)

## Overview
This repository is a reproducible analysis project for the course assignment
**Modern Tools & Workflows for Data Quality**.


Software and package versions are saved in output/session_info.txt.

---

## Project structure

- `data/` : input data (not modified)
- `code/` : analysis scripts
- `docs/` : documentation (codebook)
- `output/` : generated results (figures, tables, logs)
- `binder/` : Binder configuration files
- `run.sh` : runs the full analysis pipeline

---

## Data

- File: `data/googletrend.csv`
- Source: Google Trends export (downloaded manually)
- Note: The data contains no personal information.

A detailed description of the dataset and variables is available here:

- `docs/codebook.md`

---

## How to Run

### 1. Environment / Versions

The software and package versions used in this project are saved automatically in:

- `output/session_info.txt`

This file is generated when you run the script below.

---

### 2. Run Locally (Windows / Git Bash)

From the project root folder, execute:

```bash
bash run.sh
```
This will generate reproducible outputs in:

- `output/figures/`
- `output/tables/`
- `output/session_info.txt`

---
### 3. Run on Binder (Online)

You can also run this project online using Binder:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/anjuyamada/my-first-repo/HEAD)

Just click the badge above to launch the environment in your browser.
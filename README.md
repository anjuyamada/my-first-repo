# Reproducible Project (Course Assignment D1)

## Overview
This repository is a reproducible analysis project for the course assignment
**Modern Tools & Workflows for Data Quality**.

It demonstrates a transparent workflow with:

- Clear project structure
- Version control (Git)
- A runnable pipeline via `run.sh`
- Reproducible environment information
- Binder support

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

## How to run

### Windows (Git Bash)

From the project root folder:

```bash
bash run.sh

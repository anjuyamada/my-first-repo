\# Codebook: Google Trends (data/googletrend.csv)



\## Dataset overview

This dataset contains Google Trends search interest over time for three keywords related to maternity harassment:

\- "Matahara" (マタハラ)

\- "Maternity Harassment" (マタニティハラスメント)

\- "Maternity・Harassment" (マタニティ・ハラスメント)



\## Source

\- Platform: Google Trends (CSV export)

\- Download date: 2025-09-05 

\- Time range covered: 2010-01 to 2025-09 (monthly)

\- Region: (fill in: e.g., Japan / Worldwide)

\- Search type: (fill in: e.g., Web Search)

\- Category: (fill in if used)



\## Unit / scale

\- Google Trends index scaled from 0 to 100 (relative popularity within the selected region/time settings).



\## File location

\- `data/googletrend.csv`



\## Variables (columns)

\### `Date`

\- Meaning: Month label from the Google Trends export (monthly granularity).

\- Processing in this project: In `code/01\_analysis.R`, it is converted to a Date by appending `-01` and parsing it as the first day of the month.



\### Keyword columns (search interest)

The CSV includes one column per keyword (each value is 0–100).

In `code/01\_analysis.R`, these are renamed for clarity:



\- `マタハラ` → `Matahara (マタハラ)`

\- `マタニティハラスメント` → `Maternityharassment (マタニティハラスメント)`

\- `マタニティ.ハラスメント` → `Maternity Harassment (マタニティ・ハラスメント)`



After renaming, the data is reshaped to long format:

\- `Keyword`: keyword name

\- `Interest`: search interest index (0–100)



\## Missing values

\- (Fill in after checking the file: e.g., "No missing values observed." OR "Missing values are present and were handled by ...")



\## Notes (descriptive observations)

\- Within this period (2010-01 to 2025-09), "Maternity Harassment" and "Matahara" are most frequently used keywords.

\- Notable peaks in the time series appear around: 2013-09, 2014-10, 2015-11, 2019-12.



(Interpretations of these peaks are documented separately in `docs/notes.md`.)




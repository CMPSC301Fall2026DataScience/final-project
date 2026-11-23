# Data Directory

Place the data files for your project in this directory. Your code
(`src/analysis.r` and `writing/report.qmd`) must load them from here with
**relative paths**, for example:

- in `src/analysis.r`: `read_csv(file.path(data_dir, "my_data.csv"))`
- in `writing/report.qmd`: `read_csv("../data/my_data.csv")`

## Rules for data

- **Free and public only.** Your data must be free to download and openly
  available. Do not use data that must be bought, data behind a paywall, or
  private data (including data from a job, internship or another course that is
  not public).
- **Credible source.** Prefer government agencies, research institutions,
  scientific repositories and well-documented open-data projects. Be able to
  explain who collected the data and how.
- **Respect the license.** Check that the terms of use allow you to use the
  data and share a copy in your repository.
- **Size.** If the full dataset is larger than 5 MB, commit a smaller subset
  (about 3 MB) that your code can run on. Describe below exactly how you made
  the subset (for example, which years, which rows, or a random sample with which
  seed). Your code must run with the data you commit here.
- **Raw data stays raw.** Do not edit data files by hand. Make every change in
  your R code so that it can be reproduced.

## Data provenance (complete this section)

- **Dataset name:** TODO
- **Publisher / organization:** TODO
- **URL:** TODO
- **Date downloaded:** TODO
- **License / terms of use:** TODO
- **File(s) in this directory and what each contains:** TODO
- **If you committed a subset, how you created it:** TODO

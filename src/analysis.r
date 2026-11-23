# Data Analytics (CS301) -- Final Project: Analysis Script
#
# Project title: Add Your Project Title Here
# Author(s):     Add Your Name Here
#                Add Your Name Here (delete this line if working individually)
#
# Complete the analysis sections below. Your script should run from beginning
# to end without manual edits after you finish your work.
#
# How to run this script (choose one):
#   1. From the top folder of your repository, in a terminal:
#        Rscript src/analysis.r
#   2. In RStudio: open this file, set the working directory to the top folder
#      of your repository (Session > Set Working Directory), then click "Source".
#
# This script is your "lab bench": use it to develop and test your code.
# Your polished results (plots, models, interpretation) belong in
# writing/report.qmd, which is what the instructor grades most closely.
################################################################################

# Start with a clean RStudio session.
rm(list = ls())
graphics.off()
cat("\014")

# Install required packages if they are not already available.
# TODO: Add every package that you use to this vector (e.g., "broom", "car",
#       "rpart", "rpart.plot", "randomForest", "nnet"). Remove this TODO line.
required_packages <- c("plotly", "tidyverse")
missing_packages <- required_packages[
  !required_packages %in% installed.packages()[, "Package"]
]
if (length(missing_packages) > 0) {
  install.packages(missing_packages, repos = "https://cloud.r-project.org")
}

library(plotly)
library(tidyverse)

# Make results that use random numbers (sampling, shuffling, train/test
# splits, decision trees, neural networks) reproducible.
set.seed(301)

# Locate the top folder of the repository so that file paths work whether the
# script is run from the top folder or from inside src/.
project_dir <- if (dir.exists("data")) "." else ".."
data_dir <- file.path(project_dir, "data")
output_dir <- file.path(project_dir, "output")
dir.create(output_dir, showWarnings = FALSE)


################################################################################
# 1. Load the data
################################################################################
# Load your data from the data/ folder using a relative path. Do NOT use an
# interactive file picker or an absolute path such as
# "C:/Users/me/Desktop/data.csv", because the script must run unattended on
# the instructor's computer.
#
# Example:
#   my_data <- read_csv(file.path(data_dir, "my_data.csv"))
#
# TODO: Load your dataset(s) here, then look at it with glimpse().


################################################################################
# 2. Clean and wrangle the data
################################################################################
# Use filter(), select(), mutate(), drop_na(), pivot_longer(), etc.
# Add a short comment above each step that says WHY you did it.
#
# TODO: Clean and wrangle your data here.


################################################################################
# 3. Descriptive statistics
################################################################################
# Summarize the variables used in your hypotheses (n, mean, sd, median,
# counts per group, number of missing values, ...).
#
# TODO: Compute descriptive statistics here.


################################################################################
# 4. Exploratory plots: looking for non-random patterns
################################################################################
# Make the plots that show a pattern worth testing. Save each one so that you
# can check them after running the script, for example:
#   ggsave(file.path(output_dir, "plot1_distribution.png"), p1,
#          width = 7, height = 5)
#
# TODO: Create and save your exploratory plots here.


################################################################################
# Hypothesis 1 / Model 1
################################################################################
# H0:
# H1:
# Model or test:
#
# TODO: Fill in H0, H1 and the model above, then write the code that checks
#       the model's assumptions, fits the model and prints the results.

print("Hypothesis 1 conclusion: TODO")


################################################################################
# Hypothesis 2 / Model 2
################################################################################
# H0:
# H1:
# Model or test:
#
# TODO: Fill in H0, H1 and the model above, then write the code that checks
#       the model's assumptions, fits the model and prints the results.

print("Hypothesis 2 conclusion: TODO")


################################################################################
# Hypothesis 3 / Model 3  (REQUIRED for pairs; delete this section if you are
#                          working individually)
################################################################################
# H0:
# H1:
# Model or test:
#
# TODO: Fill in H0, H1 and the model above, then write the code that checks
#       the model's assumptions, fits the model and prints the results.

print("Hypothesis 3 conclusion: TODO")


################################################################################
# Record the software versions used (helps others reproduce your results).
################################################################################
sessionInfo()

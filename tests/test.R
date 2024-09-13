library(testthat, quietly = TRUE)
suppressPackageStartupMessages(library(tidyverse))
theme_set(theme_bw())

source("solution_.R") %>%
  suppressMessages() %>%
  suppressPackageStartupMessages()
test_dir("tests/testthat")

# In GitHub Classroom run this:
# sudo apt-get update; sudo apt-get install -y r-base-core r-cran-tidyverse r-cran-testthat; sudo Rscript -e 'install.packages("TSP")'
# Rscript tests/test.R

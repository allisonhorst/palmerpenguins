## code to prepare `penguins` dataset goes here

library(tidyverse)
library(here)
penguins_raw <- read_csv(here("data-raw", "penguins_raw.csv"))
usethis::use_data(penguins_raw, overwrite = TRUE)

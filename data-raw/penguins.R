## code to prepare `penguins` dataset goes here

library(tidyverse)
library(here)
library(janitor)

penguins <- read_csv(here("data-raw","penguins_raw.csv")) %>%
  clean_names() %>%
  mutate(species_short = word(species, 1)) %>%
  select(species_short,
         island,
         culmen_length_mm,
         culmen_depth_mm,
         flipper_length_mm,
         body_mass_g,
         sex) %>%
  rename(species = species_short)

usethis::use_data(penguins, overwrite = TRUE)

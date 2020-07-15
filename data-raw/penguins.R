library(tidyverse)
library(here)
library(janitor)
library(lubridate)

# Download raw data -------------------------------------------------------

# Adelie penguin data from: https://doi.org/10.6073/pasta/abc50eed9138b75f54eaada0841b9b86
uri_adelie <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.219.3&entityid=002f3893385f710df69eeebe893144ff"

# Gentoo penguin data from: https://doi.org/10.6073/pasta/2b1cff60f81640f182433d23e68541ce
uri_gentoo <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.220.3&entityid=e03b43c924f226486f2f0ab6709d2381"

# Chinstrap penguin data from: https://doi.org/10.6073/pasta/409c808f8fc9899d02401bdb04580af7
uri_chinstrap <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.221.2&entityid=fe853aa8f7a59aa84cdd3197619ef462"

# Combining the URIs
uris <- c(uri_adelie, uri_gentoo, uri_chinstrap)

# Downloading and importing data
penguins_raw_df <- uris %>%
  map_dfr(read_csv, na = c("", "NA", "."), col_types = list()) %>%
  as.data.frame()

write_csv(penguins_raw_df, here::here("inst", "extdata", "penguins_raw.csv"))

# Clean data --------------------------------------------------------------

penguins_df <- penguins_raw_df %>%
  clean_names() %>%
  mutate(species_short = word(species, 1)) %>%
  mutate(sex = tolower(sex)) %>%
  mutate(year = as.integer(lubridate::year(date_egg))) %>%
  mutate(across(where(is.character), as.factor)) %>%
  mutate(flipper_length_mm = as.integer(flipper_length_mm)) %>%
  mutate(body_mass_g = as.integer(body_mass_g)) %>%
  rename(bill_length_mm = culmen_length_mm,
         bill_depth_mm = culmen_depth_mm) %>%
  select(species_short,
         island,
         bill_length_mm,
         bill_depth_mm,
         flipper_length_mm,
         body_mass_g,
         sex,
         year) %>%
  rename(species = species_short) %>%
  as.data.frame()

usethis::use_data(penguins_df, penguins_raw_df, internal = TRUE, overwrite = TRUE)
write_csv(penguins_df, here::here("inst", "extdata", "penguins.csv"))

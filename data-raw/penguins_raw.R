## code to prepare `penguins` dataset goes here

library(tidyverse)
library(here)

# Adelie penguin data from: https://doi.org/10.6073/pasta/abc50eed9138b75f54eaada0841b9b86

uri_adelie <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.219.3&entityid=002f3893385f710df69eeebe893144ff"

# Gentoo penguin data from: https://doi.org/10.6073/pasta/2b1cff60f81640f182433d23e68541ce

uri_gentoo <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.220.3&entityid=e03b43c924f226486f2f0ab6709d2381"

# Chinstrap penguin data from: https://doi.org/10.6073/pasta/409c808f8fc9899d02401bdb04580af7
uri_chinstrap <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.221.2&entityid=fe853aa8f7a59aa84cdd3197619ef462"

# Combining the URIs
uris <- c(uri_adelie, uri_gentoo, uri_chinstrap)

# Downloading and importing data
penguins_lter <- as.data.frame(map_dfr(uris, read_csv))

# Write new penguins_raw.csv (using direct import & download from EDI)
write_csv(penguins_lter, here("data-raw", "penguins_raw.csv"))

# penguins_raw <- read_csv(here("data-raw", "penguins_raw.csv"))
saveRDS(penguins_lter, here("data", "penguins_raw.rds"), compress = "xz", version = 2)

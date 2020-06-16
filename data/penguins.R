delayedAssign("penguins", {
  if (requireNamespace("tibble", quietly = TRUE)) {
    tibble::as_tibble(readRDS("data/penguins.rds"))
  } else {
    readRDS("data/penguins.rds")
  }
})

delayedAssign("penguins_raw", {
  if (requireNamespace("tibble", quietly = TRUE)) {
    tibble::as_tibble(readRDS("data/penguins_raw.rds"))
  } else {
    readRDS("data/penguins_raw.rds")
  }
})

delayedAssign("penguins", local({
  path <- system.file("data", "penguins.rds", package = "palmerpenguins")
  if (requireNamespace("tibble", quietly = TRUE)) {
    tibble::as_tibble(readRDS(path))
  } else {
    readRDS(path)
  }
}))

delayedAssign("penguins_raw", local({
  path <- system.file("data", "penguins_raw.rds", package = "palmerpenguins")
  if (requireNamespace("tibble", quietly = TRUE)) {
    tibble::as_tibble(readRDS(path))
  } else {
    readRDS(path)
  }
}))

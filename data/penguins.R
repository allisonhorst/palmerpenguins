delayedAssign("penguins", local({
  if (requireNamespace("tibble", quietly = TRUE)) {
    tibble::as_tibble(palmerpenguins:::penguins_df)
  } else {
    palmerpenguins:::penguins_df
  }
}))

delayedAssign("penguins_raw", local({
  if (requireNamespace("tibble", quietly = TRUE)) {
    tibble::as_tibble(palmerpenguins:::penguins_raw_df)
  } else {
    palmerpenguins:::penguins_raw_df
  }
}))

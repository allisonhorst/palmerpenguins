#' Get file path to `penguins.csv` and `penguins_raw.csv` files
#'
#' palmerpenguins comes bundled with two csv files in its `inst/extdata`
#' directory. This function make them easy to access.
#'
#' The data in each file is the same as \code{\link{penguins}} and \code{\link{penguins_raw}},
#' but without the variable types.
#'
#' @param path Name of file in quotes with extension;
#' `"penguins.csv"` and `"penguins_raw.csv"` will work.
#' If `NULL`, the example files will be listed.
#' @export
#' @examples
#' path_to_file()
#' path_to_file("penguins_raw.csv")
#' head(read.csv(path_to_file("penguins.csv")))
#' @source This function is adapted from `readxl::readxl_example()`.
path_to_file <- function(path = NULL) {
  if (is.null(path)) {
    dir(system.file("extdata", package = "palmerpenguins"))
  } else {
    system.file("extdata", path, package = "palmerpenguins", mustWork = TRUE)
  }
}

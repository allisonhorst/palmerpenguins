#' Data for penguins in Palmer Archipelago, Antarctica from Gorman et al. (2014).
#'
#' Includes nesting observations, penguin size data, and isotope measurements from blood samples for adult Adélie, Chinstrap, and Gentoo penguins.
#'
#' @format A tibble with 344 rows and 17 variables:
#' \describe{
#'   \item{studyName}{Sampling expedition from which data were collected, generated, etc.}
#'   \item{`Sample Number`}{Continuous numberng sequence for each sample}
#'   \item{Species}{A string representing the species of an organism}
#'   \item{Region}{Nominal region of Palmer LTER sampling grid}
#'   \item{Island}{Island near Palmer Station where samples were collected}
#'   \item{Stage}{Reproductive stage at sampling}
#'   \item{`Individual ID`}{A unique ID for each individual in dataset}
#'   \item{`Clutch Completion`}{Was the study nest observed with a full clutch, i.e., 2 eggs}
#'   \item{`Date Egg`}{Date study nest observed with 1 egg (sampled)}
#'   \item{`Culmen Length`}{Length of the dorsal ridge of a bird's bill (millimeters)}
#'   \item{`Culmen Depth`}{Depth of the dorsal ridge of a bird's bill (millimeters)}
#'   \item{`Flipper Length`}{Length of flipper (millimeters)}
#'   \item{`Body Mass`}{Mass of body (grams)}
#'   \item{Sex}{Code for the sex of an animal}
#'   \item{`Delta 15 N`}{A measure of the ratio of stable isotopes 15N:14N}
#'   \item{`Delta 13 C`}{A measure of the ratio of stable isotopes 13C:12C}
#'   \item{Comments}{Text field to provide additional relevant information for data}

#' }
#' @source \url{https://doi.org/10.6073/pasta/98b16d7d563f265cb52372c8ca99e60f}
#' @source \url{https://doi.org/10.6073/pasta/7fca67fb28d56ee2ffa3d9370ebda689}
#' @source \url{https://doi.org/10.6073/pasta/c14dfcfada8ea13a17536e73eb6fbe9e}
"penguins_raw"

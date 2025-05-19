#' Aantal geldige waarden (zonder NA's)
#'
#' @param x Een vector
#' @return Het aantal niet-NA waarden
#' @export
n <- function(x) {
  sum(!is.na(x))
}

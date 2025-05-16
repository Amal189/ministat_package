#' Bereken het gemiddelde
#'
#' @param x Een numerieke vector
#'
#' @return Het gemiddelde
#' @export
gemiddelde <- function(x) {
  mean(x, na.rm = TRUE)
}

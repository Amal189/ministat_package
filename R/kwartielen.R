#' Eerste en derde kwartiel
#'
#' @param x Een numerieke vector
#' @return Een vector met het 25e en 75e percentiel
#' @export
kwartielen <- function(x) {
  quantile(x, probs = c(0.25, 0.75), na.rm = TRUE)
}

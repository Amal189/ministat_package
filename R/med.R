#' Bereken de mediaan
#'
#' @param x Een numerieke vector
#'
#' @return De mediaan
#' @export
med <- function(x) {
  median(x, na.rm = TRUE)
}

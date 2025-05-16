#' Bereken de mediaan
#'
#' @param x Een numerieke vector
#'
#' @return De mediaan
#' @export
mediaan <- function(x) {
  median(x, na.rm = TRUE)
}

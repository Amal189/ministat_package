#' Bereken de standaarddeviatie
#'
#' @param x Een numerieke vector
#'
#' @return De standaarddeviatie
#' @export
sdev <- function(x) {
  sd(x, na.rm = TRUE)
}

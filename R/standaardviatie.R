#' Bereken de standaarddeviatie
#'
#' @param x Een numerieke vector
#'
#' @return De standaarddeviatie
#' @export
sd_berekenen <- function(x) {
  sd(x, na.rm = TRUE)
}

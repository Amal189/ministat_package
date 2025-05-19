#' Spreidingsbreedte
#'
#' @param x Een numerieke vector
#' @return Verschil tussen max en min
#' @export
spreid <- function(x) {
  max(x, na.rm = TRUE) - min(x, na.rm = TRUE)
}

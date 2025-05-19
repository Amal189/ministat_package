#' Maximumwaarde (zonder NA's)
#'
#' @param x Een numerieke vector
#' @return Grootste waarde
#' @export
maxi <- function(x) {
  max(x, na.rm = TRUE)
}

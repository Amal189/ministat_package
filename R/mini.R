#' Minimumwaarde (zonder NA's)
#'
#' @param x Een numerieke vector
#' @return Kleinste waarde
#' @export
mini <- function(x) {
  min(x, na.rm = TRUE)
}

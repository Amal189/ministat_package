#' Interkwartielafstand
#'
#' @param x Een numerieke vector
#' @return Verschil tussen Q3 en Q1
#' @export
iqr <- function(x) {
  IQR(x, na.rm = TRUE)
}

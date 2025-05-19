#' Meest voorkomende waarde (modus)
#'
#' @param x Een vector
#' @return De waarde die het meest voorkomt
#' @export
modus <- function(x) {
  ux <- unique(na.omit(x))
  ux[which.max(tabulate(match(x, ux)))]
}

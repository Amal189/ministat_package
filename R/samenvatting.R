#' Geef een samenvatting van de vector
#'
#' @param x Een numerieke vector
#'
#' @return Een lijst met gemiddelde, mediaan en standaarddeviatie
#' @export
samenvatting <- function(x) {
  list(
    gemiddelde = mean(x, na.rm = TRUE),
    mediaan = median(x, na.rm = TRUE),
    sd = sd(x, na.rm = TRUE)
  )
}

#' Samenvattende statistieken van een vector
#'
#' @param x Een numerieke vector
#' @return Een tibble met kernstatistieken
#' @export
sam <- function(x) {
  q <- kwartielen(x)

  tibble::tibble(
    aantal               = n(x),
    gemiddelde           = gemiddelde(x),
    modus                = modus(x),
    mediaan              = mediaan(x),
    minimum              = min_(x),
    maximum              = max_(x),
    spreidingsbreedte    = range_(x),
    standaarddeviatie    = sd_berekenen(x),
    interkwartielafstand = iqr_(x),
    Q1                   = q[1],
    Q3                   = q[2]
  )
}


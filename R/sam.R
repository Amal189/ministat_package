#' Samenvattende statistieken van een vector
#'
#' @param x Een numerieke vector
#' @return Een tibble met kernstatistieken
#' @export
sam <- function(x) {
  q <- kwartielen(x)

  tibble::tibble(
    aantal               = n(x),
    gemiddelde           = gem(x),
    modus                = modus(x),
    mediaan              = med(x),
    minimum              = mini(x),
    maximum              = maxi(x),
    spreidingsbreedte    = spreid(x),
    standaarddeviatie    = sdev(x),
    interkwartielafstand = iqr(x),
    Q1                   = q[1],
    Q3                   = q[2]
  )
}


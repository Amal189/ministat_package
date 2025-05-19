#' Samenvattende statistiekentabel
#'
#' Genereert een reactable-tabel met uitkomsten van alle statistiekfuncties op een vector.
#'
#' @param x Een numerieke vector
#'
#' @return Een reactable-tabel
#' @export
#'
#' @examples
#' sam(c(1, 2, 2, 3, NA))
sam <- function(x) {
  functies <- c("gem", "med", "modus", "n", "mini", "maxi", "spreid", "kwartielen", "iqr", "sdev")

  resultaten <- vapply(
    functies,
    function(f) {
      waarde <- tryCatch(
        get(f, envir = asNamespace("ministate"))(x),
        error = function(e) NA
      )
      paste(waarde, collapse = " / ")
    },
    FUN.VALUE = character(1)
  )

  reactable::reactable(
    data.frame(
      Functie = functies,
      Waarde = resultaten,
      stringsAsFactors = FALSE
    ),
    columns = list(
      Functie = reactable::colDef(name = "Functie"),
      Waarde = reactable::colDef(name = "Waarde")
    ),
    striped = TRUE,
    bordered = TRUE,
    highlight = TRUE
  )
}

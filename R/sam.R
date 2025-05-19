#' Maak een interactieve samenvattingstabel van functie-uitkomsten
#'
#' Deze functie vat de resultaten van meerdere analyses samen in een overzichtelijke,
#' interactieve tabel met reactable.
#'
#' @param resultaten Een lijst of data.frame met de uitkomsten van je functies.
#' @param nrows Aantal rijen per pagina (standaard 5).
#' @return Een reactable widget met een overzichtelijke tabel.
#' @importFrom reactable reactable
#' @export
sam <- function(resultaten, nrows = 5) {
  # Voorbeeld: als 'resultaten' een lijst van named vectors/data.frames is,
  # combineer je ze eerst in één data.frame/tibble.

  # Als het al een data.frame is, kan je het direct tonen
  if (!is.data.frame(resultaten)) {
    resultaten <- do.call(rbind, lapply(resultaten, as.data.frame))
  }

  reactable::reactable(
    resultaten,
    defaultPageSize = nrows,
    compact = TRUE,
    filterable = TRUE,
    sortable = TRUE
  )
}


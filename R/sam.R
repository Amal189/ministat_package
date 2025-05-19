#' Samenvattingstabel van verschillende statistische functies
#'
#' @param x Een object (vector, data frame, lijst, etc) waar de functies op toegepast worden.
#' @return Een reactable tabel met functienaam, omschrijving en resultaat.
#' @export
sam <- function(x) {
  safe_apply <- function(f, data) {
    tryCatch({
      val <- f(data)
      if (is.numeric(val)) round(val, 2) else val
    }, error = function(e) NA)
  }

  functies <- list(
    gem = list(fun = ministate::gem, omschrijving = "Gemiddelde"),
    med = list(fun = ministate::med, omschrijving = "Mediaan"),
    modus = list(fun = ministate::modus, omschrijving = "Modus"),
    n = list(fun = ministate::n, omschrijving = "Aantal niet-NA waarden"),
    mini = list(fun = ministate::mini, omschrijving = "Minimumwaarde"),
    maxi = list(fun = ministate::maxi, omschrijving = "Maximumwaarde"),
    spreid = list(fun = ministate::spreid, omschrijving = "Verschil max - min"),
    kwartielen = list(fun = ministate::kwartielen, omschrijving = "25% en 75% kwartiel"),
    iqr = list(fun = ministate::iqr, omschrijving = "Interkwartielafstand"),
    sdev = list(fun = ministate::sdev, omschrijving = "Standaarddeviatie")
  )

  resultaten <- lapply(functies, function(f) safe_apply(f$fun, x))

  resultaten <- lapply(resultaten, function(res) {
    if (is.numeric(res) && length(res) > 1 && !is.null(names(res))) {
      paste0(names(res), ": ", round(res, 2), collapse = "; ")
    } else {
      res
    }
  })

  df <- data.frame(
    functienaam = names(functies),
    omschrijving = sapply(functies, `[[`, "omschrijving"),
    resultaat = unlist(resultaten),
    stringsAsFactors = FALSE
  )

  reactable::reactable(df, searchable = TRUE, highlight = TRUE, bordered = TRUE, striped = TRUE)
}

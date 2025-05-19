#' Toon overzicht van functies in het package
#'
#' Genereert een interactieve tabel met alle functies in het \code{ministate} package en hun argumenten.
#'
#' @return Een reactable-tabel met functienamen en argumenten.
#' @export
#'
#' @examples
#' show_functions_table()
show_functions_table <- function() {
  pkg_name <- "ministate"
  objs <- ls(envir = asNamespace(pkg_name))
  funs <- objs[sapply(objs, function(x) is.function(get(x, envir = asNamespace(pkg_name))))]

  df <- data.frame(
    Functie = funs,
    Argumenten = sapply(funs, function(f) {
      args <- names(formals(get(f, envir = asNamespace(pkg_name))))
      if (length(args) == 0) "geen" else paste(args, collapse = ", ")
    }),
    stringsAsFactors = FALSE
  )

  reactable::reactable(
    df,
    searchable = TRUE,
    sortable = TRUE,
    highlight = TRUE,
    bordered = TRUE,
    striped = TRUE,
    resizable = TRUE,
    defaultPageSize = 10,
    columns = list(
      Functie = reactable::colDef(name = "Functienaam"),
      Argumenten = reactable::colDef(name = "Argumenten")
    )
  )
}



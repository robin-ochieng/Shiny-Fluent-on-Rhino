box::use(
    reactive[reactive],
    rhino,
    tidyr,
)

#' @export
fetch_data <- function() {
    rhino::rhinos
}

#' @export
table <- function(data) {
    data |>
        tidyr::pivot_wider(names_from = Species, values_from = Population) |>
        reactive()
} 
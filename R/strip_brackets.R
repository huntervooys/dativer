#' Strip Brackets From the Ends of a String
#'
#' @param string A character vector.
#'
#' @return A character vector with any straight brackets or forward slashes removed from the beginning and end of the string.
#' @export
#'
#' @examples
#' x <- "/mob/"
#' strip_brackets(x)
strip_brackets <- function(string) {
  string |>
    # remove [ or / from the beginning of the string
    stringr::str_remove("^[\\[/]") |>
    # remove ] or / from the end of the string
    stringr::str_remove("[\\]/]$")
}

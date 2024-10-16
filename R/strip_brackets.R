strip_brackets <- function(string) {
  string |>
    # remove [ or / from the beginning of the string
    stringr::str_remove("^[\\[/]") |>
    # remove ] or / from the end of the string
    stringr::str_remove("[\\]/]$")
}

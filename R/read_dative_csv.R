#' Reads CSV export from dative
#'
#' @param file_path the path to the CSV file
#'
#' @return a tibble with the relevant columns from the CSV file (and ID column first)
#' @export
#'
#' @examples
read_dative_csv <- function(file_path) {
  readr::read_csv(
    file_path
  ) |>
    janitor::clean_names() |>
    dplyr::select(!any_of(c(
      "phonetic_transcription",
      "narrow_phonetic_transcription",
      "syntax",
      "semantics",
      "elicitation_method",
      "speaker",
      "elicitor",
      "enterer",
      "modifier",
      "verifier",
      "source",
      "tags",
      "files",
      "collections",
      "date_elicited",
      "datetime_entered",
      "datetime_modified",
      "uuid",
      "status"
    ))) |>
    dplyr::relocate(id) |>
    # remove unneeded characters in transcription
    dplyr::mutate(transcription = purrr::map_chr(transcription, strip_brackets))
}

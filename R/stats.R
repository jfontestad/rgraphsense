#' Summary statistics of address/cluster graph for all currencies
#'
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @import httr
#' @importFrom purrr map_df
#' @importFrom tibble as_tibble
#' @export
statistics <- function(api = get_api(), token = get_token()) {
  url <- modify_url(api, path = "stats")
  map_df(get_request(url, token), as_tibble, .id="currency")
}

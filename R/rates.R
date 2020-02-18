#' Get exchange rate information
#'
#' @param height An integer scalar to specify a block number.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom tibble as_tibble
#' @export
#' @examples
#' \dontrun{
#' exchange_rate(100000)
#' }
exchange_rate <- function(height, currency = supported_currencies(),
                          api = get_api(), token = get_token()) {

  stopifnot(length(height) == 1)
  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/rates/%d", currency, height))
  response <- get_request(url, token)
  as_tibble(as.list(unlist(response)))
}

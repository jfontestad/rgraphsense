#' Get basic block information
#'
#' @param block An integer scalar to specify a block number.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom tibble as_tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' block(100000)
#' }
block <- function(block, currency = supported_currencies(),
                  api = get_api(), token = get_token()) {

  stopifnot(length(block) == 1)
  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/blocks/%d", currency, block))
  as_tibble(get_request(url, token))
}


#' Check if a block is included in GraphSense
#'
#' @param block An integer scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
is_known_block <- function(block, currency = supported_currencies(),
                           api = get_api(), token = get_token()) {
  is.data.frame(tryCatch(block(block), error = function(x) x))
}


#' Get all transaction in a block
#'
#' @param block An integer scalar to specify a block number.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr map_chr map_int map_df
#' @importFrom tibble tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' block_txs(100000)
#' }
block_txs <- function(block, currency = supported_currencies(),
                      api = get_api(), token = get_token()) {

  stopifnot(length(block) == 1)
  if (!is_known_block(block)) {
    stop(sprintf("Unknown block: %0.f", block))
  }

  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/blocks/%d/txs", currency, block))
  tmp <- get_request(url, token)
  tibble(height = tmp$height,
         txHash = map_chr(tmp$txs, ~ .$tx_hash),
         noInputs = map_int(tmp$txs, ~ .$no_inputs),
         noOutputs = map_int(tmp$txs, ~ .$no_outputs),
         totalInput = map_df(tmp$txs, ~ .$total_input),
         totalOutput = map_df(tmp$txs, ~ .$total_output))
}

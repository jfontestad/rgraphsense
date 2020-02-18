#' Get basic transaction information
#'
#' @param tx_hash A character scalar to specify a transaction hash.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @import httr
#' @importFrom purrr discard map_chr map_df
#' @importFrom tibble as_tibble tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' tx("25b8d2942a5bdf36bfbae9567edc8744367bf5c2e61515ec0fa79af531c73aca")
#' }
tx <- function(tx_hash, currency = supported_currencies(),
               api = get_api(), token = get_token()) {

  stopifnot(length(tx_hash) == 1)
  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/txs/%s", currency, tx_hash))
  tmp <- get_request(url, token)
  tmp_io <- append(tmp$inputs, tmp$outputs)
  tmp_common <- as_tibble(discard(tmp, ~ is.list(.)))
  tibble(address = map_chr(tmp_io, ~ .$address),
         value = map_df(tmp_io, ~.$value),
         txHash = tmp_common$tx_hash,
         coinbase = tmp_common$coinbase,
         height = tmp_common$height,
         timestamp = tmp_common$timestamp,
         type = c(rep("in", length(tmp$inputs)),
                  rep("out", length(tmp$outputs))))
}

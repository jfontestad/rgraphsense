#' Get basic address information
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr map_if
#' @importFrom tibble as_tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' address("16SLJL6RCqHjySsKEdaEnNRWTrMhv6S8Z5")
#' }
address <- function(address, currency = supported_currencies(),
                    api = get_api(), token = get_token()) {

  stopifnot(length(address) == 1)
  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/address/%s", currency, address))
  as_tibble(map_if(get_request(url, token), is.list, as_tibble))
}


#' Check if an address is known by GraphSense
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
is_known_address <- function(address, currency = supported_currencies(),
                            api = get_api(), token = get_token()) {
  is.data.frame(tryCatch(address(address), error = function(x) x))
}


#' Get basic information of the associated cluster of an address
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr map_if
#' @importFrom tibble as_tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' address_cluster("16SLJL6RCqHjySsKEdaEnNRWTrMhv6S8Z5")
#' }
address_cluster <- function(address, currency = supported_currencies(),
                            api = get_api(), token = get_token()) {

  stopifnot(length(address) == 1)
  if (!is_known_address(address)) {
    stop(sprintf("Unknown address: %s", address))
  }

  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/address/%s/cluster",
                                   currency, address))
  as_tibble(map_if(get_request(url, token), is.list, as_tibble))
}


#' Get tag information for the associated cluster of an address
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' address_implicit_tags("16SLJL6RCqHjySsKEdaEnNRWTrMhv6S8Z5")
#' }
address_implicit_tags <- function(address, currency = supported_currencies(),
                                  api = get_api(), token = get_token()) {

  stopifnot(length(address) == 1)
  if (!is_known_address(address)) {
    stop(sprintf("Unknown address: %s", address))
  }

  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/address/%s/implicitTags",
                                   currency, address))
  tmp <- get_request(url, token)
  tmp <- modify_depth(tmp, 2, function(x) if (is.null(x)) NA else x)
  map_df(tmp, ~ as_tibble(.))
}


#' Get directly connected addresses of an address
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param direction A character scalar to specify the direction ("in", "out")
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param pagesize An integer scalar to specify the size of paginated results.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr discard map_df
#' @importFrom tibble add_column
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' address_neighbors("16SLJL6RCqHjySsKEdaEnNRWTrMhv6S8Z5")
#' }
address_neighbors <- function(address, direction = c("in", "out"),
                              currency = supported_currencies(),
                              pagesize = 1000L, api = get_api(),
                              token = get_token()) {

  stopifnot(length(address) == 1)
  stopifnot(length(pagesize) == 1)
  if (!is_known_address(address)) {
    stop(sprintf("Unknown address: %s", address))
  }

  currency <- match.arg(currency)
  direction <- match.arg(direction)
  path = sprintf("%s/address/%s/neighbors", currency, address)
  url <- modify_url(api, path = path,
                    query = list("direction" = direction,
                                 "pagesize" = pagesize))
  tmp <- get_request(url, token)
  res <- tmp$neighbors
  while (!is.null(tmp$nextPage)) {
    url <- modify_url(api, path = path,
                      query = list("direction" = direction,
                                   "page" = tmp$nextPage, 
                                   "pagesize" = pagesize))
    tmp <- get_request(url, token)
    res <- append(res, tmp$neighbors)
  }
  add_column(map_df(res, function(v) discard(v, ~is.list(.))),
             balance = map_df(res, ~ .$balance),
             received = map_df(res, ~ .$received),
             estimatedValue = map_df(res, ~ .$estimatedValue),
             direction = direction)
}


#' Get tag information of an address
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr map_df modify_depth
#' @importFrom tibble as_tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' address_tags("16SLJL6RCqHjySsKEdaEnNRWTrMhv6S8Z5")
#' }
address_tags <- function(address, currency = supported_currencies(),
                         api = get_api(), token = get_token()) {

  stopifnot(length(address) == 1)
  if (!is_known_address(address)) {
    stop(sprintf("Unknown address: %s", address))
  }

  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/address/%s/tags",
                                   currency, address))
  tmp <- get_request(url, token)
  tmp <- modify_depth(tmp, 2, function(x) if (is.null(x)) NA else x)
  map_df(tmp, ~ as_tibble(.))
}


#' Get all transactions of an address
#'
#' @param address A character scalar to specify a cryptocurrency address.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param pagesize An integer scalar to specify the size of paginated results.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr discard map_df
#' @importFrom tibble add_column
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' address_txs("16SLJL6RCqHjySsKEdaEnNRWTrMhv6S8Z5")
#' }
address_txs <- function(address, currency = supported_currencies(),
                        pagesize = 1000L, api = get_api(),
                        token = get_token()) {

  stopifnot(length(address) == 1)
  stopifnot(length(pagesize) == 1)
  if (!is_known_address(address)) {
    stop(sprintf("Unknown address: %s", address))
  }

  currency <- match.arg(currency)
  path <- sprintf("%s/address/%s/transactions", currency, address)
  url <- modify_url(api, path = path,
                    query = list("pagesize" = pagesize))
  tmp <- get_request(url, token)
  res <- tmp$transactions
  while (!is.null(tmp$nextPage)) {
    url <- modify_url(api, path = path,
                      query = list("page" = tmp$nextPage, 
                                   "pagesize" = pagesize))
    tmp <- get_request(url, token)
    res <- append(res, tmp$transactions)
  }
  add_column(map_df(res, function(v) discard(v, ~is.list(.))),
             value = map_df(res, ~.$value))
}

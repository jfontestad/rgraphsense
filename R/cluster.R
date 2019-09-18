#' Get basic cluster information
#'
#' @param cluster An integer scalar to specify a cluster ID.
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
#' cluster(17642139)
#' }
cluster <- function(cluster, currency = supported_currencies(),
                    api = get_api(), token = get_token()) {

  stopifnot(length(cluster) == 1)
  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/cluster/%d", currency, cluster))
  as_tibble(map_if(get_request(url, token), is.list, as_tibble))
}


#' Check if a cluster is present in GraphSense
#'
#' @param cluster An integer scalar to specify a cluster ID.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
is_known_cluster <- function(cluster, currency = supported_currencies(),
                             api = get_api(), token = get_token()) {
  is.data.frame(tryCatch(cluster(cluster), error = function(x) x))
}


#' Get basic information of all addresses in a cluster
#'
#' @param cluster An integer scalar to specify a cluster ID.
#' @param currency A character scalar to specify the currency ticker symbol.
#' @param pagesize An integer scalar to specify the size of paginated results.
#' @param api GraphSense API URL.
#' @param token GraphSense API token.
#' @importFrom httr modify_url
#' @importFrom purrr map_df
#' @importFrom tibble as_tibble
#' @export
#' @examples
#' \dontrun{
#' set_token("GRAPHSENSE_API_TOKEN")
#' cluster(17642139)
#' }
cluster_addresses <- function(cluster, currency = supported_currencies(),
                              pagesize = 1000L, api = get_api(),
                              token = get_token()) {

  stopifnot(length(cluster) == 1)
  if (!is_known_cluster(cluster)) {
    stop(sprintf("Unknown cluster: %.0f", cluster))
  }

  currency <- match.arg(currency)
  path <- sprintf("%s/cluster/%d/addresses", currency, cluster)
  url <- modify_url(api, path=path,
                    query = list("pagesize" = pagesize))
  tmp <- get_request(url, token)
  res <- modify_depth(tmp$addresses, 2, function(x) if (is.null(x)) NA else x)
  while (!is.null(tmp$nextPage)) {
    url <- modify_url(api, path = path,
                      query = list("page" = tmp$nextPage, 
                                   "pagesize" = pagesize))
    tmp <- get_request(url, token)
    res <- append(res,
                  modify_depth(tmp$addresses, 2,
                               function(x) if (is.null(x)) NA else x))
  }
  res <- add_column(map_df(res, function(v) discard(v, ~is.list(.))),
                    balance = map_df(res, ~ .$balance),
                    firstTx = map_df(res, ~ .$firstTx),
                    lastTx = map_df(res, ~ .$lastTx),
                    totalReceived = map_df(res, ~ .$totalReceived),
                    totalSpent = map_df(res, ~ .$totalSpent))
  res$address_prefix <- substr(res$address, 1, 5)
  res
}


#' Get directly connected clusters of a cluster
#'
#' @param cluster An integer scalar to specify a cluster ID.
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
#' cluster_neighbors(17642139)
#' }
cluster_neighbors <- function(cluster, direction = c("in", "out"),
                              currency = supported_currencies(),
                              pagesize = 1000L, api = get_api(),
                              token = get_token()) {

  stopifnot(length(cluster) == 1)
  stopifnot(length(pagesize) == 1)
  if (!is_known_cluster(cluster)) {
    stop(sprintf("Unknown cluster: %.0f", cluster))
  }

  currency <- match.arg(currency)
  direction <- match.arg(direction)
  path <- sprintf("%s/cluster/%d/neighbors", currency, cluster)
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
             estimatedValue = map_df(res, ~ .$estimatedValue))
}


#' Get tag information of an cluster
#'
#' @param cluster An integer scalar to specify a cluster ID.
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
#' cluster_tags(17642139)
#' }
cluster_tags <- function(cluster, currency = supported_currencies(),
                         api = get_api(), token = get_token()) {

  stopifnot(length(cluster) == 1)
  if (!is_known_cluster(cluster)) {
    stop(sprintf("Unknown cluster: %.0f", cluster))
  }

  currency <- match.arg(currency)
  url <- modify_url(api,
                    path = sprintf("%s/cluster/%d/tags",
                                   currency, cluster))
  tmp <- get_request(url, token)
  tmp <- modify_depth(tmp, 2, function(x) if (is.null(x)) NA else x)
  map_df(tmp, ~ as_tibble(.))
}

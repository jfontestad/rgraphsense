supported_currencies <- function() c("btc", "bch", "ltc", "zec")

#' Authentication function for GraphSense API
#'
#' Log into GraphSense API and retrieve authorization token
#'
#' @param username A character scalar to specify the username.
#' @param password A character scalar to specify the password.
#' @param api GraphSense API URL.
#' @export
authenticate <- function(username, password, api = get_api()) {
  url <- modify_url(api, path = "login")
  response <- POST(url,
                   body = list("username" = username, "password" = password),
                   encode = "json")
  if (status_code(response) != 200) stop(content(response))
  else set_token(content(response)$Authorization)
  invisible(NULL)
}


#' Set GraphSense API token
#'
#' Sets an API token to make available for all API calls. See details
#'
#' @param key GraphSense API token
#'
#' @details
#' Use \code{set_token} to make an  API token available for all GraphSense
#' functions, so you don't need to specify the \code{token} parameter
#' within those functions.
#'
#' @export
set_token <- function(key) {
  options("graphsense.api.key" = key)
  invisible(NULL)
}


#' Get GraphSense API token
#'
#' @export
get_token <- function() {
  key <- getOption("graphsense.api.key")
  if (is.null(key)) {
    stop(paste("No API token provided. Use either set_token() to set a token,",
               "or provide it as a function argument in the 'token' parameter"))
  }
  key
}


#' Set GraphSense API URL
#'
#' @param api_url GraphSense API URL (default: api.graphsense.info)
#' @export
set_api <- function(api_url) {
  options("graphsense.api.url" = api_url)
  invisible(NULL)
}


#' Get GraphSense API URL
#'
#' @export
get_api <- function() {
  api_url <- getOption("graphsense.api.url")
  if (is.null(api_url)) {
    api_url <- "https://api.graphsense.info"
  }
  api_url
}


#' @importFrom httr accept_json add_headers content GET
get_request <- function(url, token) {
  response <- GET(url,
                  add_headers("Authorization" = token),
                  accept_json())
  if (status_code(response) != 200) stop(content(response))
  else content(response)
}

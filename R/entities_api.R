# GraphSense API
#
# GraphSense API
#
# The version of the OpenAPI document: 0.5.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Entities operations
#' @description openapi.Entities
#' @format An \code{R6Class} generator object
#' @field apiClient Handles the client-server communication.
#'
#' @section Methods:
#' \describe{
#' \strong{ GetEntity } \emph{ Get an entity, optionally with tags }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } include.tags character
#' \item \emph{ @returnType } \link{Entity} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : Entity 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ ListEntityAddresses } \emph{ Get an entity&#39;s addresses }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } page character
#' \item \emph{ @param } pagesize integer
#' \item \emph{ @returnType } \link{EntityAddresses} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : EntityAddresses 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ ListEntityLinks } \emph{ Get transactions between two entities }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } neighbor integer
#' \item \emph{ @param } page character
#' \item \emph{ @param } pagesize integer
#' \item \emph{ @returnType } \link{Links} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : Links 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ ListEntityNeighbors } \emph{ Get an entity&#39;s neighbors in the entity graph }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } direction Enum < [in, out] > 
#' \item \emph{ @param } only.ids list( integer )
#' \item \emph{ @param } include.labels character
#' \item \emph{ @param } page character
#' \item \emph{ @param } pagesize integer
#' \item \emph{ @returnType } \link{Neighbors} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : Neighbors 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ ListEntityTxs } \emph{ Get all transactions an entity has been involved in }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } page character
#' \item \emph{ @param } pagesize integer
#' \item \emph{ @returnType } \link{AddressTxs} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : AddressTxs 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ ListTagsByEntity } \emph{ Get tags for a given entity for the given level }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } level Enum < [address, entity] > 
#' \item \emph{ @param } page character
#' \item \emph{ @param } pagesize integer
#' \item \emph{ @returnType } \link{Tags} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : Tags 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' \strong{ SearchEntityNeighbors } \emph{ Search deeply for matching neighbors }
#' 
#'
#' \itemize{
#' \item \emph{ @param } currency character
#' \item \emph{ @param } entity integer
#' \item \emph{ @param } direction Enum < [in, out] > 
#' \item \emph{ @param } key Enum < [category, addresses, entities, total_received, balance] > 
#' \item \emph{ @param } value list( character )
#' \item \emph{ @param } depth integer
#' \item \emph{ @param } breadth integer
#' \item \emph{ @param } skip.num.addresses integer
#' \item \emph{ @returnType } \link{SearchResultLevel1} \cr
#'
#'
#' \item status code : 200 | OK
#'
#' \item return type : SearchResultLevel1 
#' \item response headers :
#'
#' \tabular{ll}{
#' }
#' }
#'
#' }
#'
#'
#' @examples
#' \dontrun{
#' ####################  GetEntity  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.include.tags <- FALSE # character | Whether to include the first page of tags. Use the respective /tags endpoint to retrieve more if needed.
#'
#' #Get an entity, optionally with tags
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$GetEntity(var.currency, var.entity, include.tags=var.include.tags)
#'
#'
#' ####################  ListEntityAddresses  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.page <- 'page_example' # character | Resumption token for retrieving the next page
#' var.pagesize <- 10 # integer | Number of items returned in a single page
#'
#' #Get an entity's addresses
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$ListEntityAddresses(var.currency, var.entity, page=var.page, pagesize=var.pagesize)
#'
#'
#' ####################  ListEntityLinks  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.neighbor <- 123456 # integer | Neighbor entity
#' var.page <- 'page_example' # character | Resumption token for retrieving the next page
#' var.pagesize <- 10 # integer | Number of items returned in a single page
#'
#' #Get transactions between two entities
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$ListEntityLinks(var.currency, var.entity, var.neighbor, page=var.page, pagesize=var.pagesize)
#'
#'
#' ####################  ListEntityNeighbors  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.direction <- 'out' # character | Incoming or outgoing neighbors
#' var.only.ids <- [56] # array[integer] | Restrict result to given set of comma separated IDs
#' var.include.labels <- FALSE # character | Whether to include labels of first page of tags
#' var.page <- 'page_example' # character | Resumption token for retrieving the next page
#' var.pagesize <- 10 # integer | Number of items returned in a single page
#'
#' #Get an entity's neighbors in the entity graph
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$ListEntityNeighbors(var.currency, var.entity, var.direction, only.ids=var.only.ids, include.labels=var.include.labels, page=var.page, pagesize=var.pagesize)
#'
#'
#' ####################  ListEntityTxs  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.page <- 'page_example' # character | Resumption token for retrieving the next page
#' var.pagesize <- 10 # integer | Number of items returned in a single page
#'
#' #Get all transactions an entity has been involved in
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$ListEntityTxs(var.currency, var.entity, page=var.page, pagesize=var.pagesize)
#'
#'
#' ####################  ListTagsByEntity  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.level <- 'address' # character | Whether tags on the address or entity level are requested
#' var.page <- 'page_example' # character | Resumption token for retrieving the next page
#' var.pagesize <- 10 # integer | Number of items returned in a single page
#'
#' #Get tags for a given entity for the given level
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$ListTagsByEntity(var.currency, var.entity, var.level, page=var.page, pagesize=var.pagesize)
#'
#'
#' ####################  SearchEntityNeighbors  ####################
#'
#' library(openapi)
#' var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
#' var.entity <- 67065 # integer | The entity ID
#' var.direction <- 'out' # character | Incoming or outgoing neighbors
#' var.key <- 'category' # character | Match neighbors against one and only one of these properties: - the category the entity belongs to - addresses the entity contains - entity ids - total_received: amount the entity received in total - balance: amount the entity holds finally
#' var.value <- ['Miner'] # array[character] | If key is - category: comma separated list of category names - addresses: comma separated list of address IDs - entities: comma separated list of entity IDs - total_received/balance: comma separated tuple of (currency, min, max) where currency is 'value' for the cryptocurrency value or an ISO currency code
#' var.depth <- 2 # integer | How many hops should the transaction graph be searched
#' var.breadth <- 16 # integer | How many siblings of each neighbor should be tried
#' var.skip.num.addresses <- 56 # integer | Skip entities containing more addresses
#'
#' #Search deeply for matching neighbors
#' api.instance <- EntitiesApi$new()
#'
#' #Configure API key authorization: api_key
#' api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
#'
#' result <- api.instance$SearchEntityNeighbors(var.currency, var.entity, var.direction, var.key, var.value, var.depth, breadth=var.breadth, skip.num.addresses=var.skip.num.addresses)
#'
#'
#' }
#' @importFrom R6 R6Class
#' @importFrom base64enc base64encode
#' @export
EntitiesApi <- R6::R6Class(
  'EntitiesApi',
  public = list(
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    GetEntity = function(currency, entity, include.tags=FALSE, ...){
      apiResponse <- self$GetEntityWithHttpInfo(currency, entity, include.tags, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    GetEntityWithHttpInfo = function(currency, entity, include.tags=FALSE, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      queryParams['include_tags'] <- include.tags

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "Entity", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    ListEntityAddresses = function(currency, entity, page=NULL, pagesize=NULL, ...){
      apiResponse <- self$ListEntityAddressesWithHttpInfo(currency, entity, page, pagesize, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    ListEntityAddressesWithHttpInfo = function(currency, entity, page=NULL, pagesize=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      queryParams['page'] <- page

      queryParams['pagesize'] <- pagesize

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}/addresses"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "EntityAddresses", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    ListEntityLinks = function(currency, entity, neighbor, page=NULL, pagesize=NULL, ...){
      apiResponse <- self$ListEntityLinksWithHttpInfo(currency, entity, neighbor, page, pagesize, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    ListEntityLinksWithHttpInfo = function(currency, entity, neighbor, page=NULL, pagesize=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      if (missing(`neighbor`)) {
        stop("Missing required parameter `neighbor`.")
      }

      queryParams['neighbor'] <- neighbor

      queryParams['page'] <- page

      queryParams['pagesize'] <- pagesize

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}/links"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "Links", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    ListEntityNeighbors = function(currency, entity, direction, only.ids=NULL, include.labels=FALSE, page=NULL, pagesize=NULL, ...){
      apiResponse <- self$ListEntityNeighborsWithHttpInfo(currency, entity, direction, only.ids, include.labels, page, pagesize, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    ListEntityNeighborsWithHttpInfo = function(currency, entity, direction, only.ids=NULL, include.labels=FALSE, page=NULL, pagesize=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      if (missing(`direction`)) {
        stop("Missing required parameter `direction`.")
      }

      queryParams['direction'] <- direction

      queryParams['only_ids'] <- only.ids

      queryParams['include_labels'] <- include.labels

      queryParams['page'] <- page

      queryParams['pagesize'] <- pagesize

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}/neighbors"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "Neighbors", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    ListEntityTxs = function(currency, entity, page=NULL, pagesize=NULL, ...){
      apiResponse <- self$ListEntityTxsWithHttpInfo(currency, entity, page, pagesize, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    ListEntityTxsWithHttpInfo = function(currency, entity, page=NULL, pagesize=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      queryParams['page'] <- page

      queryParams['pagesize'] <- pagesize

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}/txs"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "AddressTxs", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    ListTagsByEntity = function(currency, entity, level, page=NULL, pagesize=NULL, ...){
      apiResponse <- self$ListTagsByEntityWithHttpInfo(currency, entity, level, page, pagesize, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    ListTagsByEntityWithHttpInfo = function(currency, entity, level, page=NULL, pagesize=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      if (missing(`level`)) {
        stop("Missing required parameter `level`.")
      }

      queryParams['level'] <- level

      queryParams['page'] <- page

      queryParams['pagesize'] <- pagesize

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}/tags"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "Tags", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    },
    SearchEntityNeighbors = function(currency, entity, direction, key, value, depth, breadth=16, skip.num.addresses=NULL, ...){
      apiResponse <- self$SearchEntityNeighborsWithHttpInfo(currency, entity, direction, key, value, depth, breadth, skip.num.addresses, ...)
      resp <- apiResponse$response
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        apiResponse$content
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        apiResponse
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        apiResponse
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        apiResponse
      }
    },

    SearchEntityNeighborsWithHttpInfo = function(currency, entity, direction, key, value, depth, breadth=16, skip.num.addresses=NULL, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- c()

      if (missing(`currency`)) {
        stop("Missing required parameter `currency`.")
      }

      if (missing(`entity`)) {
        stop("Missing required parameter `entity`.")
      }

      if (missing(`direction`)) {
        stop("Missing required parameter `direction`.")
      }

      if (missing(`key`)) {
        stop("Missing required parameter `key`.")
      }

      if (missing(`value`)) {
        stop("Missing required parameter `value`.")
      }

      if (missing(`depth`)) {
        stop("Missing required parameter `depth`.")
      }

      queryParams['direction'] <- direction

      queryParams['key'] <- key

      queryParams['value'] <- value

      queryParams['depth'] <- depth

      queryParams['breadth'] <- breadth

      queryParams['skip_num_addresses'] <- skip.num.addresses

      body <- NULL
      urlPath <- "/{currency}/entities/{entity}/search"
      if (!missing(`currency`)) {
        urlPath <- gsub(paste0("\\{", "currency", "\\}"), URLencode(as.character(`currency`), reserved = TRUE), urlPath)
      }

      if (!missing(`entity`)) {
        urlPath <- gsub(paste0("\\{", "entity", "\\}"), URLencode(as.character(`entity`), reserved = TRUE), urlPath)
      }

      # API key authentication
      if ("Authorization" %in% names(self$apiClient$apiKeys) && nchar(self$apiClient$apiKeys["Authorization"]) > 0) {
        headerParams['Authorization'] <- paste(unlist(self$apiClient$apiKeys["Authorization"]), collapse='')
      }

      resp <- self$apiClient$CallApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)

      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        deserializedRespObj <- tryCatch(
          self$apiClient$deserialize(resp, "SearchResultLevel1", loadNamespace("openapi")),
          error = function(e){
             stop("Failed to deserialize response")
          }
        )
        ApiResponse$new(deserializedRespObj, resp)
      } else if (httr::status_code(resp) >= 300 && httr::status_code(resp) <= 399) {
        ApiResponse$new(paste("Server returned " , httr::status_code(resp) , " response status code."), resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        ApiResponse$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        ApiResponse$new("API server error", resp)
      }
    }
  )
)

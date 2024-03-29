# GraphSense API
#
# GraphSense API
#
# The version of the OpenAPI document: 0.5.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title AddressTx
#'
#' @description AddressTx Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field coinbase  character 
#'
#' @field height  integer 
#'
#' @field timestamp  integer 
#'
#' @field tx_hash  character 
#'
#' @field tx_type  character 
#'
#' @field value  \link{Values} 
#'
#' @field from_address  character 
#'
#' @field to_address  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
AddressTx <- R6::R6Class(
  'AddressTx',
  public = list(
    `coinbase` = NULL,
    `height` = NULL,
    `timestamp` = NULL,
    `tx_hash` = NULL,
    `tx_type` = NULL,
    `value` = NULL,
    `from_address` = NULL,
    `to_address` = NULL,
    initialize = function(
        `coinbase`, `height`, `timestamp`, `tx_hash`, `tx_type`, `value`, `from_address`, `to_address`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`coinbase`)) {
        self$`coinbase` <- `coinbase`
      }
      if (!missing(`height`)) {
        stopifnot(is.numeric(`height`), length(`height`) == 1)
        self$`height` <- `height`
      }
      if (!missing(`timestamp`)) {
        stopifnot(is.numeric(`timestamp`), length(`timestamp`) == 1)
        self$`timestamp` <- `timestamp`
      }
      if (!missing(`tx_hash`)) {
        stopifnot(is.character(`tx_hash`), length(`tx_hash`) == 1)
        self$`tx_hash` <- `tx_hash`
      }
      if (!missing(`tx_type`)) {
        stopifnot(is.character(`tx_type`), length(`tx_type`) == 1)
        self$`tx_type` <- `tx_type`
      }
      if (!missing(`value`)) {
        stopifnot(R6::is.R6(`value`))
        self$`value` <- `value`
      }
      if (!missing(`from_address`)) {
        stopifnot(is.character(`from_address`), length(`from_address`) == 1)
        self$`from_address` <- `from_address`
      }
      if (!missing(`to_address`)) {
        stopifnot(is.character(`to_address`), length(`to_address`) == 1)
        self$`to_address` <- `to_address`
      }
    },
    toJSON = function() {
      AddressTxObject <- list()
      if (!is.null(self$`coinbase`)) {
        AddressTxObject[['coinbase']] <-
          self$`coinbase`
      }
      if (!is.null(self$`height`)) {
        AddressTxObject[['height']] <-
          self$`height`
      }
      if (!is.null(self$`timestamp`)) {
        AddressTxObject[['timestamp']] <-
          self$`timestamp`
      }
      if (!is.null(self$`tx_hash`)) {
        AddressTxObject[['tx_hash']] <-
          self$`tx_hash`
      }
      if (!is.null(self$`tx_type`)) {
        AddressTxObject[['tx_type']] <-
          self$`tx_type`
      }
      if (!is.null(self$`value`)) {
        AddressTxObject[['value']] <-
          self$`value`$toJSON()
      }
      if (!is.null(self$`from_address`)) {
        AddressTxObject[['from_address']] <-
          self$`from_address`
      }
      if (!is.null(self$`to_address`)) {
        AddressTxObject[['to_address']] <-
          self$`to_address`
      }

      AddressTxObject
    },
    fromJSON = function(AddressTxJson) {
      AddressTxObject <- jsonlite::fromJSON(AddressTxJson)
      if (!is.null(AddressTxObject$`coinbase`)) {
        self$`coinbase` <- AddressTxObject$`coinbase`
      }
      if (!is.null(AddressTxObject$`height`)) {
        self$`height` <- AddressTxObject$`height`
      }
      if (!is.null(AddressTxObject$`timestamp`)) {
        self$`timestamp` <- AddressTxObject$`timestamp`
      }
      if (!is.null(AddressTxObject$`tx_hash`)) {
        self$`tx_hash` <- AddressTxObject$`tx_hash`
      }
      if (!is.null(AddressTxObject$`tx_type`)) {
        self$`tx_type` <- AddressTxObject$`tx_type`
      }
      if (!is.null(AddressTxObject$`value`)) {
        valueObject <- Values$new()
        valueObject$fromJSON(jsonlite::toJSON(AddressTxObject$value, auto_unbox = TRUE, digits = NA))
        self$`value` <- valueObject
      }
      if (!is.null(AddressTxObject$`from_address`)) {
        self$`from_address` <- AddressTxObject$`from_address`
      }
      if (!is.null(AddressTxObject$`to_address`)) {
        self$`to_address` <- AddressTxObject$`to_address`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`coinbase`)) {
        sprintf(
        '"coinbase":
          "%s"
                ',
        self$`coinbase`
        )},
        if (!is.null(self$`height`)) {
        sprintf(
        '"height":
          %d
                ',
        self$`height`
        )},
        if (!is.null(self$`timestamp`)) {
        sprintf(
        '"timestamp":
          %d
                ',
        self$`timestamp`
        )},
        if (!is.null(self$`tx_hash`)) {
        sprintf(
        '"tx_hash":
          "%s"
                ',
        self$`tx_hash`
        )},
        if (!is.null(self$`tx_type`)) {
        sprintf(
        '"tx_type":
          "%s"
                ',
        self$`tx_type`
        )},
        if (!is.null(self$`value`)) {
        sprintf(
        '"value":
        %s
        ',
        jsonlite::toJSON(self$`value`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`from_address`)) {
        sprintf(
        '"from_address":
          "%s"
                ',
        self$`from_address`
        )},
        if (!is.null(self$`to_address`)) {
        sprintf(
        '"to_address":
          "%s"
                ',
        self$`to_address`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(AddressTxJson) {
      AddressTxObject <- jsonlite::fromJSON(AddressTxJson)
      self$`coinbase` <- AddressTxObject$`coinbase`
      self$`height` <- AddressTxObject$`height`
      self$`timestamp` <- AddressTxObject$`timestamp`
      self$`tx_hash` <- AddressTxObject$`tx_hash`
      self$`tx_type` <- AddressTxObject$`tx_type`
      self$`value` <- Values$new()$fromJSON(jsonlite::toJSON(AddressTxObject$value, auto_unbox = TRUE, digits = NA))
      self$`from_address` <- AddressTxObject$`from_address`
      self$`to_address` <- AddressTxObject$`to_address`
      self
    }
  )
)


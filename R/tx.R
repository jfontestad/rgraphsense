# GraphSense API
#
# GraphSense API
#
# The version of the OpenAPI document: 0.5.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Tx
#'
#' @description Tx Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field coinbase  character 
#'
#' @field height  integer 
#'
#' @field inputs  list( \link{TxValue} ) [optional]
#'
#' @field outputs  list( \link{TxValue} ) [optional]
#'
#' @field timestamp  integer 
#'
#' @field total_input  \link{Values} 
#'
#' @field total_output  \link{Values} 
#'
#' @field tx_hash  character 
#'
#' @field tx_type  character 
#'
#' @field from_address  character 
#'
#' @field to_address  character 
#'
#' @field value  \link{Values} 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Tx <- R6::R6Class(
  'Tx',
  public = list(
    `coinbase` = NULL,
    `height` = NULL,
    `inputs` = NULL,
    `outputs` = NULL,
    `timestamp` = NULL,
    `total_input` = NULL,
    `total_output` = NULL,
    `tx_hash` = NULL,
    `tx_type` = NULL,
    `from_address` = NULL,
    `to_address` = NULL,
    `value` = NULL,
    initialize = function(
        `coinbase`, `height`, `timestamp`, `total_input`, `total_output`, `tx_hash`, `tx_type`, `from_address`, `to_address`, `value`, `inputs`=NULL, `outputs`=NULL, ...
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
      if (!missing(`total_input`)) {
        stopifnot(R6::is.R6(`total_input`))
        self$`total_input` <- `total_input`
      }
      if (!missing(`total_output`)) {
        stopifnot(R6::is.R6(`total_output`))
        self$`total_output` <- `total_output`
      }
      if (!missing(`tx_hash`)) {
        stopifnot(is.character(`tx_hash`), length(`tx_hash`) == 1)
        self$`tx_hash` <- `tx_hash`
      }
      if (!missing(`tx_type`)) {
        stopifnot(is.character(`tx_type`), length(`tx_type`) == 1)
        self$`tx_type` <- `tx_type`
      }
      if (!missing(`from_address`)) {
        stopifnot(is.character(`from_address`), length(`from_address`) == 1)
        self$`from_address` <- `from_address`
      }
      if (!missing(`to_address`)) {
        stopifnot(is.character(`to_address`), length(`to_address`) == 1)
        self$`to_address` <- `to_address`
      }
      if (!missing(`value`)) {
        stopifnot(R6::is.R6(`value`))
        self$`value` <- `value`
      }
      if (!is.null(`inputs`)) {
        stopifnot(is.vector(`inputs`), length(`inputs`) != 0)
        sapply(`inputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`inputs` <- `inputs`
      }
      if (!is.null(`outputs`)) {
        stopifnot(is.vector(`outputs`), length(`outputs`) != 0)
        sapply(`outputs`, function(x) stopifnot(R6::is.R6(x)))
        self$`outputs` <- `outputs`
      }
    },
    toJSON = function() {
      TxObject <- list()
      if (!is.null(self$`coinbase`)) {
        TxObject[['coinbase']] <-
          self$`coinbase`
      }
      if (!is.null(self$`height`)) {
        TxObject[['height']] <-
          self$`height`
      }
      if (!is.null(self$`inputs`)) {
        TxObject[['inputs']] <-
          lapply(self$`inputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`outputs`)) {
        TxObject[['outputs']] <-
          lapply(self$`outputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`timestamp`)) {
        TxObject[['timestamp']] <-
          self$`timestamp`
      }
      if (!is.null(self$`total_input`)) {
        TxObject[['total_input']] <-
          self$`total_input`$toJSON()
      }
      if (!is.null(self$`total_output`)) {
        TxObject[['total_output']] <-
          self$`total_output`$toJSON()
      }
      if (!is.null(self$`tx_hash`)) {
        TxObject[['tx_hash']] <-
          self$`tx_hash`
      }
      if (!is.null(self$`tx_type`)) {
        TxObject[['tx_type']] <-
          self$`tx_type`
      }
      if (!is.null(self$`from_address`)) {
        TxObject[['from_address']] <-
          self$`from_address`
      }
      if (!is.null(self$`to_address`)) {
        TxObject[['to_address']] <-
          self$`to_address`
      }
      if (!is.null(self$`value`)) {
        TxObject[['value']] <-
          self$`value`$toJSON()
      }

      TxObject
    },
    fromJSON = function(TxJson) {
      TxObject <- jsonlite::fromJSON(TxJson)
      if (!is.null(TxObject$`coinbase`)) {
        self$`coinbase` <- TxObject$`coinbase`
      }
      if (!is.null(TxObject$`height`)) {
        self$`height` <- TxObject$`height`
      }
      if (!is.null(TxObject$`inputs`)) {
        self$`inputs` <- ApiClient$new()$deserializeObj(TxObject$`inputs`, "array[TxValue]", loadNamespace("openapi"))
      }
      if (!is.null(TxObject$`outputs`)) {
        self$`outputs` <- ApiClient$new()$deserializeObj(TxObject$`outputs`, "array[TxValue]", loadNamespace("openapi"))
      }
      if (!is.null(TxObject$`timestamp`)) {
        self$`timestamp` <- TxObject$`timestamp`
      }
      if (!is.null(TxObject$`total_input`)) {
        total_inputObject <- Values$new()
        total_inputObject$fromJSON(jsonlite::toJSON(TxObject$total_input, auto_unbox = TRUE, digits = NA))
        self$`total_input` <- total_inputObject
      }
      if (!is.null(TxObject$`total_output`)) {
        total_outputObject <- Values$new()
        total_outputObject$fromJSON(jsonlite::toJSON(TxObject$total_output, auto_unbox = TRUE, digits = NA))
        self$`total_output` <- total_outputObject
      }
      if (!is.null(TxObject$`tx_hash`)) {
        self$`tx_hash` <- TxObject$`tx_hash`
      }
      if (!is.null(TxObject$`tx_type`)) {
        self$`tx_type` <- TxObject$`tx_type`
      }
      if (!is.null(TxObject$`from_address`)) {
        self$`from_address` <- TxObject$`from_address`
      }
      if (!is.null(TxObject$`to_address`)) {
        self$`to_address` <- TxObject$`to_address`
      }
      if (!is.null(TxObject$`value`)) {
        valueObject <- Values$new()
        valueObject$fromJSON(jsonlite::toJSON(TxObject$value, auto_unbox = TRUE, digits = NA))
        self$`value` <- valueObject
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
        if (!is.null(self$`inputs`)) {
        sprintf(
        '"inputs":
        [%s]
',
        paste(sapply(self$`inputs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`outputs`)) {
        sprintf(
        '"outputs":
        [%s]
',
        paste(sapply(self$`outputs`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox=TRUE, digits = NA)), collapse=",")
        )},
        if (!is.null(self$`timestamp`)) {
        sprintf(
        '"timestamp":
          %d
                ',
        self$`timestamp`
        )},
        if (!is.null(self$`total_input`)) {
        sprintf(
        '"total_input":
        %s
        ',
        jsonlite::toJSON(self$`total_input`$toJSON(), auto_unbox=TRUE, digits = NA)
        )},
        if (!is.null(self$`total_output`)) {
        sprintf(
        '"total_output":
        %s
        ',
        jsonlite::toJSON(self$`total_output`$toJSON(), auto_unbox=TRUE, digits = NA)
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
        )},
        if (!is.null(self$`value`)) {
        sprintf(
        '"value":
        %s
        ',
        jsonlite::toJSON(self$`value`$toJSON(), auto_unbox=TRUE, digits = NA)
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(TxJson) {
      TxObject <- jsonlite::fromJSON(TxJson)
      self$`coinbase` <- TxObject$`coinbase`
      self$`height` <- TxObject$`height`
      self$`inputs` <- ApiClient$new()$deserializeObj(TxObject$`inputs`, "array[TxValue]", loadNamespace("openapi"))
      self$`outputs` <- ApiClient$new()$deserializeObj(TxObject$`outputs`, "array[TxValue]", loadNamespace("openapi"))
      self$`timestamp` <- TxObject$`timestamp`
      self$`total_input` <- Values$new()$fromJSON(jsonlite::toJSON(TxObject$total_input, auto_unbox = TRUE, digits = NA))
      self$`total_output` <- Values$new()$fromJSON(jsonlite::toJSON(TxObject$total_output, auto_unbox = TRUE, digits = NA))
      self$`tx_hash` <- TxObject$`tx_hash`
      self$`tx_type` <- TxObject$`tx_type`
      self$`from_address` <- TxObject$`from_address`
      self$`to_address` <- TxObject$`to_address`
      self$`value` <- Values$new()$fromJSON(jsonlite::toJSON(TxObject$value, auto_unbox = TRUE, digits = NA))
      self
    }
  )
)


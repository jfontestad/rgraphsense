# GraphSense API
#
# GraphSense API
#
# The version of the OpenAPI document: 0.5.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title TxUtxo
#'
#' @description TxUtxo Class
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
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
TxUtxo <- R6::R6Class(
  'TxUtxo',
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
    initialize = function(
        `coinbase`, `height`, `timestamp`, `total_input`, `total_output`, `tx_hash`, `tx_type`, `inputs`=NULL, `outputs`=NULL, ...
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
      TxUtxoObject <- list()
      if (!is.null(self$`coinbase`)) {
        TxUtxoObject[['coinbase']] <-
          self$`coinbase`
      }
      if (!is.null(self$`height`)) {
        TxUtxoObject[['height']] <-
          self$`height`
      }
      if (!is.null(self$`inputs`)) {
        TxUtxoObject[['inputs']] <-
          lapply(self$`inputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`outputs`)) {
        TxUtxoObject[['outputs']] <-
          lapply(self$`outputs`, function(x) x$toJSON())
      }
      if (!is.null(self$`timestamp`)) {
        TxUtxoObject[['timestamp']] <-
          self$`timestamp`
      }
      if (!is.null(self$`total_input`)) {
        TxUtxoObject[['total_input']] <-
          self$`total_input`$toJSON()
      }
      if (!is.null(self$`total_output`)) {
        TxUtxoObject[['total_output']] <-
          self$`total_output`$toJSON()
      }
      if (!is.null(self$`tx_hash`)) {
        TxUtxoObject[['tx_hash']] <-
          self$`tx_hash`
      }
      if (!is.null(self$`tx_type`)) {
        TxUtxoObject[['tx_type']] <-
          self$`tx_type`
      }

      TxUtxoObject
    },
    fromJSON = function(TxUtxoJson) {
      TxUtxoObject <- jsonlite::fromJSON(TxUtxoJson)
      if (!is.null(TxUtxoObject$`coinbase`)) {
        self$`coinbase` <- TxUtxoObject$`coinbase`
      }
      if (!is.null(TxUtxoObject$`height`)) {
        self$`height` <- TxUtxoObject$`height`
      }
      if (!is.null(TxUtxoObject$`inputs`)) {
        self$`inputs` <- ApiClient$new()$deserializeObj(TxUtxoObject$`inputs`, "array[TxValue]", loadNamespace("openapi"))
      }
      if (!is.null(TxUtxoObject$`outputs`)) {
        self$`outputs` <- ApiClient$new()$deserializeObj(TxUtxoObject$`outputs`, "array[TxValue]", loadNamespace("openapi"))
      }
      if (!is.null(TxUtxoObject$`timestamp`)) {
        self$`timestamp` <- TxUtxoObject$`timestamp`
      }
      if (!is.null(TxUtxoObject$`total_input`)) {
        total_inputObject <- Values$new()
        total_inputObject$fromJSON(jsonlite::toJSON(TxUtxoObject$total_input, auto_unbox = TRUE, digits = NA))
        self$`total_input` <- total_inputObject
      }
      if (!is.null(TxUtxoObject$`total_output`)) {
        total_outputObject <- Values$new()
        total_outputObject$fromJSON(jsonlite::toJSON(TxUtxoObject$total_output, auto_unbox = TRUE, digits = NA))
        self$`total_output` <- total_outputObject
      }
      if (!is.null(TxUtxoObject$`tx_hash`)) {
        self$`tx_hash` <- TxUtxoObject$`tx_hash`
      }
      if (!is.null(TxUtxoObject$`tx_type`)) {
        self$`tx_type` <- TxUtxoObject$`tx_type`
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
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(TxUtxoJson) {
      TxUtxoObject <- jsonlite::fromJSON(TxUtxoJson)
      self$`coinbase` <- TxUtxoObject$`coinbase`
      self$`height` <- TxUtxoObject$`height`
      self$`inputs` <- ApiClient$new()$deserializeObj(TxUtxoObject$`inputs`, "array[TxValue]", loadNamespace("openapi"))
      self$`outputs` <- ApiClient$new()$deserializeObj(TxUtxoObject$`outputs`, "array[TxValue]", loadNamespace("openapi"))
      self$`timestamp` <- TxUtxoObject$`timestamp`
      self$`total_input` <- Values$new()$fromJSON(jsonlite::toJSON(TxUtxoObject$total_input, auto_unbox = TRUE, digits = NA))
      self$`total_output` <- Values$new()$fromJSON(jsonlite::toJSON(TxUtxoObject$total_output, auto_unbox = TRUE, digits = NA))
      self$`tx_hash` <- TxUtxoObject$`tx_hash`
      self$`tx_type` <- TxUtxoObject$`tx_type`
      self
    }
  )
)


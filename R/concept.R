# GraphSense API
#
# GraphSense API
#
# The version of the OpenAPI document: 0.5.1
# 
# Generated by: https://openapi-generator.tech

#' @docType class
#' @title Concept
#'
#' @description Concept Class
#'
#' @format An \code{R6Class} generator object
#'
#' @field description  character 
#'
#' @field id  character 
#'
#' @field label  character 
#'
#' @field taxonomy  character 
#'
#' @field uri  character 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Concept <- R6::R6Class(
  'Concept',
  public = list(
    `description` = NULL,
    `id` = NULL,
    `label` = NULL,
    `taxonomy` = NULL,
    `uri` = NULL,
    initialize = function(
        `description`, `id`, `label`, `taxonomy`, `uri`, ...
    ) {
      local.optional.var <- list(...)
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
      if (!missing(`taxonomy`)) {
        stopifnot(is.character(`taxonomy`), length(`taxonomy`) == 1)
        self$`taxonomy` <- `taxonomy`
      }
      if (!missing(`uri`)) {
        stopifnot(is.character(`uri`), length(`uri`) == 1)
        self$`uri` <- `uri`
      }
    },
    toJSON = function() {
      ConceptObject <- list()
      if (!is.null(self$`description`)) {
        ConceptObject[['description']] <-
          self$`description`
      }
      if (!is.null(self$`id`)) {
        ConceptObject[['id']] <-
          self$`id`
      }
      if (!is.null(self$`label`)) {
        ConceptObject[['label']] <-
          self$`label`
      }
      if (!is.null(self$`taxonomy`)) {
        ConceptObject[['taxonomy']] <-
          self$`taxonomy`
      }
      if (!is.null(self$`uri`)) {
        ConceptObject[['uri']] <-
          self$`uri`
      }

      ConceptObject
    },
    fromJSON = function(ConceptJson) {
      ConceptObject <- jsonlite::fromJSON(ConceptJson)
      if (!is.null(ConceptObject$`description`)) {
        self$`description` <- ConceptObject$`description`
      }
      if (!is.null(ConceptObject$`id`)) {
        self$`id` <- ConceptObject$`id`
      }
      if (!is.null(ConceptObject$`label`)) {
        self$`label` <- ConceptObject$`label`
      }
      if (!is.null(ConceptObject$`taxonomy`)) {
        self$`taxonomy` <- ConceptObject$`taxonomy`
      }
      if (!is.null(ConceptObject$`uri`)) {
        self$`uri` <- ConceptObject$`uri`
      }
      self
    },
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`description`)) {
        sprintf(
        '"description":
          "%s"
                ',
        self$`description`
        )},
        if (!is.null(self$`id`)) {
        sprintf(
        '"id":
          "%s"
                ',
        self$`id`
        )},
        if (!is.null(self$`label`)) {
        sprintf(
        '"label":
          "%s"
                ',
        self$`label`
        )},
        if (!is.null(self$`taxonomy`)) {
        sprintf(
        '"taxonomy":
          "%s"
                ',
        self$`taxonomy`
        )},
        if (!is.null(self$`uri`)) {
        sprintf(
        '"uri":
          "%s"
                ',
        self$`uri`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      paste('{', jsoncontent, '}', sep = "")
    },
    fromJSONString = function(ConceptJson) {
      ConceptObject <- jsonlite::fromJSON(ConceptJson)
      self$`description` <- ConceptObject$`description`
      self$`id` <- ConceptObject$`id`
      self$`label` <- ConceptObject$`label`
      self$`taxonomy` <- ConceptObject$`taxonomy`
      self$`uri` <- ConceptObject$`uri`
      self
    }
  )
)


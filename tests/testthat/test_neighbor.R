# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test Neighbor")

model.instance <- Neighbor$new()

test_that("id", {
  # tests for the property `id` (character)
  # address or entity id

  # uncomment below to test the property 
  #expect_equal(model.instance$`id`, "EXPECTED_RESULT")
})

test_that("node_type", {
  # tests for the property `node_type` (character)
  # address or entity

  # uncomment below to test the property 
  #expect_equal(model.instance$`node_type`, "EXPECTED_RESULT")
})

test_that("labels", {
  # tests for the property `labels` (array[character])
  # labels

  # uncomment below to test the property 
  #expect_equal(model.instance$`labels`, "EXPECTED_RESULT")
})

test_that("balance", {
  # tests for the property `balance` (Values)

  # uncomment below to test the property 
  #expect_equal(model.instance$`balance`, "EXPECTED_RESULT")
})

test_that("received", {
  # tests for the property `received` (Values)

  # uncomment below to test the property 
  #expect_equal(model.instance$`received`, "EXPECTED_RESULT")
})

test_that("estimated_value", {
  # tests for the property `estimated_value` (Values)

  # uncomment below to test the property 
  #expect_equal(model.instance$`estimated_value`, "EXPECTED_RESULT")
})

test_that("no_txs", {
  # tests for the property `no_txs` (integer)
  # number of transactions

  # uncomment below to test the property 
  #expect_equal(model.instance$`no_txs`, "EXPECTED_RESULT")
})


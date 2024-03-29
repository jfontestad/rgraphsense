# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test TxUtxo")

model.instance <- TxUtxo$new()

test_that("currency_type", {
  # tests for the property `currency_type` (character)

  # uncomment below to test the property 
  #expect_equal(model.instance$`currency_type`, "EXPECTED_RESULT")
})

test_that("tx_hash", {
  # tests for the property `tx_hash` (character)
  # Transaction hash

  # uncomment below to test the property 
  #expect_equal(model.instance$`tx_hash`, "EXPECTED_RESULT")
})

test_that("coinbase", {
  # tests for the property `coinbase` (character)
  # Coinbase transaction flag

  # uncomment below to test the property 
  #expect_equal(model.instance$`coinbase`, "EXPECTED_RESULT")
})

test_that("height", {
  # tests for the property `height` (integer)
  # Height

  # uncomment below to test the property 
  #expect_equal(model.instance$`height`, "EXPECTED_RESULT")
})

test_that("inputs", {
  # tests for the property `inputs` (array[TxValue])
  # Transaction inputs/outputs

  # uncomment below to test the property 
  #expect_equal(model.instance$`inputs`, "EXPECTED_RESULT")
})

test_that("outputs", {
  # tests for the property `outputs` (array[TxValue])
  # Transaction inputs/outputs

  # uncomment below to test the property 
  #expect_equal(model.instance$`outputs`, "EXPECTED_RESULT")
})

test_that("timestamp", {
  # tests for the property `timestamp` (integer)
  # Timestamp

  # uncomment below to test the property 
  #expect_equal(model.instance$`timestamp`, "EXPECTED_RESULT")
})

test_that("total_input", {
  # tests for the property `total_input` (Values)

  # uncomment below to test the property 
  #expect_equal(model.instance$`total_input`, "EXPECTED_RESULT")
})

test_that("total_output", {
  # tests for the property `total_output` (Values)

  # uncomment below to test the property 
  #expect_equal(model.instance$`total_output`, "EXPECTED_RESULT")
})


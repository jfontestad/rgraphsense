# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test RatesApi")

api.instance <- RatesApi$new()

test_that("GetExchangeRates", {
  # tests for GetExchangeRates
  # base path: https://api.graphsense.info
  # Returns exchange rate for a given height
  # @param currency character The cryptocurrency (e.g., btc)
  # @param height integer The block height
  # @return [Rates]

  # uncomment below to test the operation
  #expect_equal(result, "EXPECTED_RESULT")
})


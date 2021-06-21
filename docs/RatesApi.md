# RatesApi

All URIs are relative to *http://openapi_server:9000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetExchangeRates**](RatesApi.md#GetExchangeRates) | **GET** /{currency}/rates/{height} | Returns exchange rate for a given height


# **GetExchangeRates**
> Rates GetExchangeRates(currency, height)

Returns exchange rate for a given height

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.height <- 1 # integer | The block height

#Returns exchange rate for a given height
api.instance <- RatesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetExchangeRates(var.currency, var.height)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **height** | **integer**| The block height | 

### Return type

[**Rates**](rates.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


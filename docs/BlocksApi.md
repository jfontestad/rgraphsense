# BlocksApi

All URIs are relative to *http://graphsense-rest:9000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBlock**](BlocksApi.md#GetBlock) | **GET** /{currency}/blocks/{height} | Get a block by its height
[**ListBlockTxs**](BlocksApi.md#ListBlockTxs) | **GET** /{currency}/blocks/{height}/txs | Get block transactions


# **GetBlock**
> Block GetBlock(currency, height)

Get a block by its height

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.height <- 1 # integer | The block height

#Get a block by its height
api.instance <- BlocksApi$new()
api.instance$apiClient$basePath <- 'http://graphsense-rest:9000';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$GetBlock(var.currency, var.height)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **height** | **integer**| The block height | 

### Return type

[**Block**](block.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListBlockTxs**
> array[Tx] ListBlockTxs(currency, height)

Get block transactions

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.height <- 1 # integer | The block height

#Get block transactions
api.instance <- BlocksApi$new()
api.instance$apiClient$basePath <- 'http://graphsense-rest:9000';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListBlockTxs(var.currency, var.height)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **height** | **integer**| The block height | 

### Return type

[**array[Tx]**](tx.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


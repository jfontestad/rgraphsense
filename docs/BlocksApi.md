# BlocksApi

All URIs are relative to *http://graphsense-rest:9000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetBlock**](BlocksApi.md#GetBlock) | **GET** /{currency}/blocks/{height} | Get a block by its height
[**ListBlockTxs**](BlocksApi.md#ListBlockTxs) | **GET** /{currency}/blocks/{height}/txs | Get block transactions
[**ListBlockTxsCsv**](BlocksApi.md#ListBlockTxsCsv) | **GET** /{currency}/blocks/{height}/txs.csv | Get block transactions as CSV
[**ListBlocks**](BlocksApi.md#ListBlocks) | **GET** /{currency}/blocks | Get all blocks


# **GetBlock**
> Block GetBlock(currency, height)

Get a block by its height

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.height <- 1 # integer | The block height

#Get a block by its height
api.instance <- BlocksApi$new()
api.instance$apiClient$basePath <- 'http://graphsense-rest:9000';
result <- api.instance$GetBlock(var.currency, var.height)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **height** | **integer**| The block height | 

### Return type

[**Block**](block.md)

### Authorization

No authorization required

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

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.height <- 1 # integer | The block height

#Get block transactions
api.instance <- BlocksApi$new()
api.instance$apiClient$basePath <- 'http://graphsense-rest:9000';
result <- api.instance$ListBlockTxs(var.currency, var.height)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **height** | **integer**| The block height | 

### Return type

[**array[Tx]**](tx.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListBlockTxsCsv**
> character ListBlockTxsCsv(currency, height)

Get block transactions as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.height <- 1 # integer | The block height

#Get block transactions as CSV
api.instance <- BlocksApi$new()
api.instance$apiClient$basePath <- 'http://graphsense-rest:9000';
result <- api.instance$ListBlockTxsCsv(var.currency, var.height)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **height** | **integer**| The block height | 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListBlocks**
> Blocks ListBlocks(currency, page=var.page)

Get all blocks

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.page <- 'page_example' # character | Resumption token for retrieving the next page

#Get all blocks
api.instance <- BlocksApi$new()
api.instance$apiClient$basePath <- 'http://graphsense-rest:9000';
result <- api.instance$ListBlocks(var.currency, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 

### Return type

[**Blocks**](blocks.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


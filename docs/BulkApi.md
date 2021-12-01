# BulkApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BulkCsv**](BulkApi.md#BulkCsv) | **POST** /{currency}/bulk.csv/{operation} | Get data as CSV in bulk
[**BulkJson**](BulkApi.md#BulkJson) | **POST** /{currency}/bulk.json/{operation} | Get data as JSON in bulk


# **BulkCsv**
> character BulkCsv(currency, operation, num.pages, body)

Get data as CSV in bulk

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.operation <- 'get_block' # character | The operation to execute in bulk
var.num.pages <- 1 # integer | Number of pages to retrieve for operations with list response
var.body <- {"height":[1,2,3]} # object | Map of the operation's parameter names to (arrays of) values

#Get data as CSV in bulk
api.instance <- BulkApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$BulkCsv(var.currency, var.operation, var.num.pages, var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **operation** | Enum [get_block, list_block_txs, get_address, list_address_txs, list_tags_by_address, list_address_neighbors, get_address_entity, list_address_links, get_entity, list_tags_by_entity, list_entity_neighbors, list_entity_txs, list_entity_links, list_entity_addresses, get_tx, get_tx_io, get_exchange_rates] | The operation to execute in bulk | 
 **num.pages** | **integer**| Number of pages to retrieve for operations with list response | 
 **body** | **object**| Map of the operation&#39;s parameter names to (arrays of) values | 

### Return type

**character**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **BulkJson**
> array[map(object)] BulkJson(currency, operation, num.pages, body)

Get data as JSON in bulk

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.operation <- 'get_block' # character | The operation to execute in bulk
var.num.pages <- 1 # integer | Number of pages to retrieve for operations with list response
var.body <- NULL # object | Map of the operation's parameter names to (arrays of) values

#Get data as JSON in bulk
api.instance <- BulkApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$BulkJson(var.currency, var.operation, var.num.pages, var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **operation** | Enum [get_block, list_block_txs, get_address, list_address_txs, list_tags_by_address, list_address_neighbors, get_address_entity, list_address_links, get_entity, list_tags_by_entity, list_entity_neighbors, list_entity_txs, list_entity_links, list_entity_addresses, get_tx, get_tx_io, get_exchange_rates] | The operation to execute in bulk | 
 **num.pages** | **integer**| Number of pages to retrieve for operations with list response | 
 **body** | **object**| Map of the operation&#39;s parameter names to (arrays of) values | 

### Return type

[**array[map(object)]**](map.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


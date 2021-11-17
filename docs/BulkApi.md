# BulkApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BulkCsv**](BulkApi.md#BulkCsv) | **POST** /{currency}/bulk.csv/{api}/{operation} | Get data as CSV in bulk
[**BulkJson**](BulkApi.md#BulkJson) | **POST** /{currency}/bulk.json/{api}/{operation} | Get data as JSON in bulk


# **BulkCsv**
> character BulkCsv(currency, api, operation, body)

Get data as CSV in bulk

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.api <- 'blocks' # character | The api of the operation to execute in bulk
var.operation <- 'get_block' # character | The operation to execute in bulk
var.body <- {"height":[1,2,3]} # object | Map of the operation's parameter names to (arrays of) values

#Get data as CSV in bulk
api.instance <- BulkApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$BulkCsv(var.currency, var.api, var.operation, var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **api** | Enum [blocks, addresses, entities, txs, rates, tags] | The api of the operation to execute in bulk | 
 **operation** | Enum [get_block, list_block_txs, get_address, list_address_txs, list_tags_by_address, list_address_neighbors, get_address_entity, list_address_links, get_entity, list_tags_by_entity, list_entity_neighbors, list_entity_txs, list_entity_links, list_entity_addresses, get_tx, get_tx_io, get_exchange_rates] | The operation to execute in bulk | 
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
> array[map(object)] BulkJson(currency, api, operation, body)

Get data as JSON in bulk

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.api <- 'blocks' # character | The api of the operation to execute in bulk
var.operation <- 'get_block' # character | The operation to execute in bulk
var.body <- NULL # object | Map of the operation's parameter names to (arrays of) values

#Get data as JSON in bulk
api.instance <- BulkApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$BulkJson(var.currency, var.api, var.operation, var.body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **api** | Enum [blocks, addresses, entities, txs, rates, tags] | The api of the operation to execute in bulk | 
 **operation** | Enum [get_block, list_block_txs, get_address, list_address_txs, list_tags_by_address, list_address_neighbors, get_address_entity, list_address_links, get_entity, list_tags_by_entity, list_entity_neighbors, list_entity_txs, list_entity_links, list_entity_addresses, get_tx, get_tx_io, get_exchange_rates] | The operation to execute in bulk | 
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


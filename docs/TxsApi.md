# TxsApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTx**](TxsApi.md#GetTx) | **GET** /{currency}/txs/{tx_hash} | Returns details of a specific transaction identified by its hash.
[**ListTxs**](TxsApi.md#ListTxs) | **GET** /{currency}/txs | Returns transactions


# **GetTx**
> Tx GetTx(currency, tx.hash)

Returns details of a specific transaction identified by its hash.

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.tx.hash <- 'ab188013' # character | The transaction hash

#Returns details of a specific transaction identified by its hash.
api.instance <- TxsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetTx(var.currency, var.tx.hash)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **tx.hash** | **character**| The transaction hash | 

### Return type

[**Tx**](tx.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListTxs**
> Txs ListTxs(currency, page=var.page)

Returns transactions

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.page <- 'page_example' # character | Resumption token for retrieving the next page

#Returns transactions
api.instance <- TxsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListTxs(var.currency, page=var.page)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 

### Return type

[**Txs**](txs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


# TxsApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetTx**](TxsApi.md#GetTx) | **GET** /{currency}/txs/{tx_hash} | Returns details of a specific transaction identified by its hash.
[**GetTxIo**](TxsApi.md#GetTxIo) | **GET** /{currency}/txs/{tx_hash}/{io} | Returns input/output values of a specific transaction identified by its hash.


# **GetTx**
> Tx GetTx(currency, tx.hash, include.io=FALSE)

Returns details of a specific transaction identified by its hash.

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.tx.hash <- 'ab188013' # character | The transaction hash
var.include.io <- FALSE # character | Whether to include inputs/outputs of a transaction (UTXO only)

#Returns details of a specific transaction identified by its hash.
api.instance <- TxsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$GetTx(var.currency, var.tx.hash, include.io=var.include.io)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **tx.hash** | **character**| The transaction hash | 
 **include.io** | **character**| Whether to include inputs/outputs of a transaction (UTXO only) | [optional] [default to FALSE]

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

# **GetTxIo**
> array[TxValue] GetTxIo(currency, tx.hash, io)

Returns input/output values of a specific transaction identified by its hash.

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.tx.hash <- 'ab188013' # character | The transaction hash
var.io <- 'outputs' # character | Input or outpus values of a transaction

#Returns input/output values of a specific transaction identified by its hash.
api.instance <- TxsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$GetTxIo(var.currency, var.tx.hash, var.io)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **tx.hash** | **character**| The transaction hash | 
 **io** | Enum [inputs, outputs] | Input or outpus values of a transaction | 

### Return type

[**array[TxValue]**](tx_value.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


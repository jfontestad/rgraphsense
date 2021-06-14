# GeneralApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetStatistics**](GeneralApi.md#GetStatistics) | **GET** /stats | Get statistics of supported currencies
[**Search**](GeneralApi.md#Search) | **GET** /search | Returns matching addresses, transactions and labels


# **GetStatistics**
> Stats GetStatistics()

Get statistics of supported currencies

### Example
```R
library(openapi)


#Get statistics of supported currencies
api.instance <- GeneralApi$new()
result <- api.instance$GetStatistics()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Stats**](stats.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **Search**
> SearchResult Search(q, currency=var.currency, limit=var.limit)

Returns matching addresses, transactions and labels

### Example
```R
library(openapi)

var.q <- 'foo' # character | It can be (the beginning of) an address, a transaction or a label
var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.limit <- 10 # integer | Maximum number of search results

#Returns matching addresses, transactions and labels
api.instance <- GeneralApi$new()
result <- api.instance$Search(var.q, currency=var.currency, limit=var.limit)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| It can be (the beginning of) an address, a transaction or a label | 
 **currency** | **character**| The cryptocurrency (e.g., btc) | [optional] 
 **limit** | **integer**| Maximum number of search results | [optional] 

### Return type

[**SearchResult**](search_result.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


# BatchApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Batch**](BatchApi.md#Batch) | **POST** /{currency}/batch | Get data as CSV in batch


# **Batch**
> character Batch(currency, batch.operation=var.batch.operation)

Get data as CSV in batch

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.batch.operation <- batch_operation$new("api_example", "operation_example", list(list_entity_addresses_parameters$new(123))) # BatchOperation | 

#Get data as CSV in batch
api.instance <- BatchApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
result <- api.instance$Batch(var.currency, batch.operation=var.batch.operation)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **batch.operation** | [**BatchOperation**](BatchOperation.md)|  | [optional] 

### Return type

**character**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


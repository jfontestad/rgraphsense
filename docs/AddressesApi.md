# AddressesApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAddress**](AddressesApi.md#GetAddress) | **GET** /{currency}/addresses/{address} | Get an address, optionally with tags
[**GetAddressEntity**](AddressesApi.md#GetAddressEntity) | **GET** /{currency}/addresses/{address}/entity | Get the entity of an address
[**ListAddressLinks**](AddressesApi.md#ListAddressLinks) | **GET** /{currency}/addresses/{address}/links | Get outgoing transactions between two addresses
[**ListAddressNeighbors**](AddressesApi.md#ListAddressNeighbors) | **GET** /{currency}/addresses/{address}/neighbors | Get an addresses&#39; neighbors in the address graph
[**ListAddressTxs**](AddressesApi.md#ListAddressTxs) | **GET** /{currency}/addresses/{address}/txs | Get all transactions an address has been involved in
[**ListTagsByAddress**](AddressesApi.md#ListTagsByAddress) | **GET** /{currency}/addresses/{address}/tags | Get attribution tags for a given address


# **GetAddress**
> Address GetAddress(currency, address, include.tags=FALSE)

Get an address, optionally with tags

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- 'addressA' # character | The cryptocurrency address
var.include.tags <- FALSE # character | Whether to include tags

#Get an address, optionally with tags
api.instance <- AddressesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$GetAddress(var.currency, var.address, include.tags=var.include.tags)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **include.tags** | **character**| Whether to include tags | [optional] [default to FALSE]

### Return type

[**Address**](address.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **GetAddressEntity**
> Entity GetAddressEntity(currency, address, include.tags=FALSE, tag.coherence=FALSE)

Get the entity of an address

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- 'addressA' # character | The cryptocurrency address
var.include.tags <- FALSE # character | Whether to include tags
var.tag.coherence <- FALSE # character | Whether to calculate coherence of address tags

#Get the entity of an address
api.instance <- AddressesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$GetAddressEntity(var.currency, var.address, include.tags=var.include.tags, tag.coherence=var.tag.coherence)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **include.tags** | **character**| Whether to include tags | [optional] [default to FALSE]
 **tag.coherence** | **character**| Whether to calculate coherence of address tags | [optional] [default to FALSE]

### Return type

[**Entity**](entity.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListAddressLinks**
> Links ListAddressLinks(currency, address, neighbor, page=var.page, pagesize=var.pagesize)

Get outgoing transactions between two addresses

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- 'addressA' # character | The cryptocurrency address
var.neighbor <- 'addressE' # character | Neighbor address
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get outgoing transactions between two addresses
api.instance <- AddressesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListAddressLinks(var.currency, var.address, var.neighbor, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **neighbor** | **character**| Neighbor address | 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 
 **pagesize** | **integer**| Number of items returned in a single page | [optional] 

### Return type

[**Links**](links.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListAddressNeighbors**
> Neighbors ListAddressNeighbors(currency, address, direction, include.labels=FALSE, page=var.page, pagesize=var.pagesize)

Get an addresses' neighbors in the address graph

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- 'addressA' # character | The cryptocurrency address
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.include.labels <- FALSE # character | Whether to include labels of tags
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get an addresses' neighbors in the address graph
api.instance <- AddressesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListAddressNeighbors(var.currency, var.address, var.direction, include.labels=var.include.labels, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **direction** | Enum [in, out] | Incoming or outgoing neighbors | 
 **include.labels** | **character**| Whether to include labels of tags | [optional] [default to FALSE]
 **page** | **character**| Resumption token for retrieving the next page | [optional] 
 **pagesize** | **integer**| Number of items returned in a single page | [optional] 

### Return type

[**Neighbors**](neighbors.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListAddressTxs**
> AddressTxs ListAddressTxs(currency, address, page=var.page, pagesize=var.pagesize)

Get all transactions an address has been involved in

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- 'addressA' # character | The cryptocurrency address
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get all transactions an address has been involved in
api.instance <- AddressesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListAddressTxs(var.currency, var.address, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 
 **pagesize** | **integer**| Number of items returned in a single page | [optional] 

### Return type

[**AddressTxs**](address_txs.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListTagsByAddress**
> array[AddressTag] ListTagsByAddress(currency, address)

Get attribution tags for a given address

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- 'addressA' # character | The cryptocurrency address

#Get attribution tags for a given address
api.instance <- AddressesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListTagsByAddress(var.currency, var.address)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 

### Return type

[**array[AddressTag]**](address_tag.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


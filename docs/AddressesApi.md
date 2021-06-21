# AddressesApi

All URIs are relative to *http://openapi_server:9000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetAddress**](AddressesApi.md#GetAddress) | **GET** /{currency}/addresses/{address} | Get an address, optionally with tags
[**GetAddressEntity**](AddressesApi.md#GetAddressEntity) | **GET** /{currency}/addresses/{address}/entity | Get the entity of an address
[**ListAddressLinks**](AddressesApi.md#ListAddressLinks) | **GET** /{currency}/addresses/{address}/links | Get transactions between two addresses
[**ListAddressLinksCsv**](AddressesApi.md#ListAddressLinksCsv) | **GET** /{currency}/addresses/{address}/links.csv | Get transactions between two addresses as CSV
[**ListAddressNeighbors**](AddressesApi.md#ListAddressNeighbors) | **GET** /{currency}/addresses/{address}/neighbors | Get an addresses&#39; neighbors in the address graph
[**ListAddressNeighborsCsv**](AddressesApi.md#ListAddressNeighborsCsv) | **GET** /{currency}/addresses/{address}/neighbors.csv | Get an addresses&#39; neighbors in the address graph as CSV
[**ListAddressTxs**](AddressesApi.md#ListAddressTxs) | **GET** /{currency}/addresses/{address}/txs | Get all transactions an address has been involved in
[**ListAddressTxsCsv**](AddressesApi.md#ListAddressTxsCsv) | **GET** /{currency}/addresses/{address}/txs.csv | Get all transactions an address has been involved in as CSV
[**ListAddresses**](AddressesApi.md#ListAddresses) | **GET** /{currency}/addresses | Get addresses
[**ListAddressesCsv**](AddressesApi.md#ListAddressesCsv) | **GET** /{currency}/addresses.csv | Get addresses as CSV
[**ListTagsByAddress**](AddressesApi.md#ListTagsByAddress) | **GET** /{currency}/addresses/{address}/tags | Get attribution tags for a given address
[**ListTagsByAddressCsv**](AddressesApi.md#ListTagsByAddressCsv) | **GET** /{currency}/addresses/{address}/tags.csv | Get attribution tags for a given address


# **GetAddress**
> Address GetAddress(currency, address, include.tags=FALSE)

Get an address, optionally with tags

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.include.tags <- FALSE # character | Whether tags should be included

#Get an address, optionally with tags
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAddress(var.currency, var.address, include.tags=var.include.tags)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **include.tags** | **character**| Whether tags should be included | [optional] [default to FALSE]

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
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.include.tags <- FALSE # character | Whether tags should be included
var.tag.coherence <- FALSE # character | Whether to calculate coherence of address tags

#Get the entity of an address
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetAddressEntity(var.currency, var.address, include.tags=var.include.tags, tag.coherence=var.tag.coherence)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **include.tags** | **character**| Whether tags should be included | [optional] [default to FALSE]
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
> array[Link] ListAddressLinks(currency, address, neighbor)

Get transactions between two addresses

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.neighbor <- '17DfZja1713S3JRWA9jaebCKFM5anUh7GG' # character | Neighbor address

#Get transactions between two addresses
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddressLinks(var.currency, var.address, var.neighbor)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **neighbor** | **character**| Neighbor address | 

### Return type

[**array[Link]**](link.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListAddressLinksCsv**
> character ListAddressLinksCsv(currency, address, neighbor)

Get transactions between two addresses as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.neighbor <- '17DfZja1713S3JRWA9jaebCKFM5anUh7GG' # character | Neighbor address

#Get transactions between two addresses as CSV
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddressLinksCsv(var.currency, var.address, var.neighbor)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **neighbor** | **character**| Neighbor address | 

### Return type

**character**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

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
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.include.labels <- FALSE # character | Whether labels of tags should be included
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get an addresses' neighbors in the address graph
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddressNeighbors(var.currency, var.address, var.direction, include.labels=var.include.labels, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **direction** | Enum [in, out] | Incoming or outgoing neighbors | 
 **include.labels** | **character**| Whether labels of tags should be included | [optional] [default to FALSE]
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

# **ListAddressNeighborsCsv**
> character ListAddressNeighborsCsv(currency, address, direction, include.labels=FALSE)

Get an addresses' neighbors in the address graph as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.include.labels <- FALSE # character | Whether labels of tags should be included

#Get an addresses' neighbors in the address graph as CSV
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddressNeighborsCsv(var.currency, var.address, var.direction, include.labels=var.include.labels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 
 **direction** | Enum [in, out] | Incoming or outgoing neighbors | 
 **include.labels** | **character**| Whether labels of tags should be included | [optional] [default to FALSE]

### Return type

**character**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

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
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get all transactions an address has been involved in
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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

# **ListAddressTxsCsv**
> character ListAddressTxsCsv(currency, address)

Get all transactions an address has been involved in as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address

#Get all transactions an address has been involved in as CSV
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddressTxsCsv(var.currency, var.address)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 

### Return type

**character**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListAddresses**
> Addresses ListAddresses(currency, ids=var.ids, page=var.page, pagesize=var.pagesize)

Get addresses

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.ids <- list("inner_example") # array[character] | Restrict result to given set of comma separated IDs
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get addresses
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddresses(var.currency, ids=var.ids, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **ids** | list( **character** )| Restrict result to given set of comma separated IDs | [optional] 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 
 **pagesize** | **integer**| Number of items returned in a single page | [optional] 

### Return type

[**Addresses**](addresses.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListAddressesCsv**
> character ListAddressesCsv(currency, ids)

Get addresses as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.ids <- list("inner_example") # array[character] | Set of comma separated IDs

#Get addresses as CSV
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListAddressesCsv(var.currency, var.ids)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **ids** | list( **character** )| Set of comma separated IDs | 

### Return type

**character**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

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
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address

#Get attribution tags for a given address
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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

# **ListTagsByAddressCsv**
> character ListTagsByAddressCsv(currency, address)

Get attribution tags for a given address

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.address <- '1Archive1n2C579dMsAu3iC6tWzuQJz8dN' # character | The cryptocurrency address

#Get attribution tags for a given address
api.instance <- AddressesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListTagsByAddressCsv(var.currency, var.address)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **address** | **character**| The cryptocurrency address | 

### Return type

**character**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/csv

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


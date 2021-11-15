# EntitiesApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetEntity**](EntitiesApi.md#GetEntity) | **GET** /{currency}/entities/{entity} | Get an entity, optionally with tags
[**ListEntityAddresses**](EntitiesApi.md#ListEntityAddresses) | **GET** /{currency}/entities/{entity}/addresses | Get an entity&#39;s addresses
[**ListEntityLinks**](EntitiesApi.md#ListEntityLinks) | **GET** /{currency}/entities/{entity}/links | Get transactions between two entities
[**ListEntityNeighbors**](EntitiesApi.md#ListEntityNeighbors) | **GET** /{currency}/entities/{entity}/neighbors | Get an entity&#39;s neighbors in the entity graph
[**ListEntityTxs**](EntitiesApi.md#ListEntityTxs) | **GET** /{currency}/entities/{entity}/txs | Get all transactions an entity has been involved in
[**ListTagsByEntity**](EntitiesApi.md#ListTagsByEntity) | **GET** /{currency}/entities/{entity}/tags | Get tags for a given entity
[**SearchEntityNeighbors**](EntitiesApi.md#SearchEntityNeighbors) | **GET** /{currency}/entities/{entity}/search | Search deeply for matching neighbors


# **GetEntity**
> Entity GetEntity(currency, entity, include.tags=FALSE, tag.coherence=FALSE)

Get an entity, optionally with tags

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.include.tags <- FALSE # character | Whether to include tags
var.tag.coherence <- FALSE # character | Whether to calculate coherence of address tags

#Get an entity, optionally with tags
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$GetEntity(var.currency, var.entity, include.tags=var.include.tags, tag.coherence=var.tag.coherence)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
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

# **ListEntityAddresses**
> EntityAddresses ListEntityAddresses(currency, entity, page=var.page, pagesize=var.pagesize)

Get an entity's addresses

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get an entity's addresses
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListEntityAddresses(var.currency, var.entity, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 
 **pagesize** | **integer**| Number of items returned in a single page | [optional] 

### Return type

[**EntityAddresses**](entity_addresses.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListEntityLinks**
> Links ListEntityLinks(currency, entity, neighbor, page=var.page, pagesize=var.pagesize)

Get transactions between two entities

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.neighbor <- 123456 # integer | Neighbor entity
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get transactions between two entities
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListEntityLinks(var.currency, var.entity, var.neighbor, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **neighbor** | **integer**| Neighbor entity | 
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

# **ListEntityNeighbors**
> Neighbors ListEntityNeighbors(currency, entity, direction, only.ids=var.only.ids, include.labels=FALSE, page=var.page, pagesize=var.pagesize)

Get an entity's neighbors in the entity graph

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.only.ids <- list(123) # array[integer] | Restrict result to given set of comma separated IDs
var.include.labels <- FALSE # character | Whether to include labels of tags
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get an entity's neighbors in the entity graph
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListEntityNeighbors(var.currency, var.entity, var.direction, only.ids=var.only.ids, include.labels=var.include.labels, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **direction** | Enum [in, out] | Incoming or outgoing neighbors | 
 **only.ids** | list( **integer** )| Restrict result to given set of comma separated IDs | [optional] 
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

# **ListEntityTxs**
> AddressTxs ListEntityTxs(currency, entity, page=var.page, pagesize=var.pagesize)

Get all transactions an entity has been involved in

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get all transactions an entity has been involved in
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListEntityTxs(var.currency, var.entity, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
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

# **ListTagsByEntity**
> Tags ListTagsByEntity(currency, entity, tag.coherence=FALSE)

Get tags for a given entity

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.tag.coherence <- FALSE # character | Whether to calculate coherence of address tags

#Get tags for a given entity
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListTagsByEntity(var.currency, var.entity, tag.coherence=var.tag.coherence)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **tag.coherence** | **character**| Whether to calculate coherence of address tags | [optional] [default to FALSE]

### Return type

[**Tags**](tags.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **SearchEntityNeighbors**
> SearchResultLevel1 SearchEntityNeighbors(currency, entity, direction, key, value, depth, breadth=16, skip.num.addresses=var.skip.num.addresses)

Search deeply for matching neighbors

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.key <- 'category' # character | Match neighbors against one and only one of these properties: - the category the entity belongs to - addresses the entity contains - entity ids - total_received: amount the entity received in total - balance: amount the entity holds finally
var.value <- list("inner_example") # array[character] | If key is - category: comma separated list of category names - addresses: comma separated list of address IDs - entities: comma separated list of entity IDs - total_received/balance: comma separated tuple of (currency, min, max) where currency is 'value' for the cryptocurrency value or an ISO currency code
var.depth <- 2 # integer | How many hops should the transaction graph be searched
var.breadth <- 16 # integer | How many siblings of each neighbor should be tried
var.skip.num.addresses <- 56 # integer | Skip entities containing more addresses

#Search deeply for matching neighbors
api.instance <- EntitiesApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$SearchEntityNeighbors(var.currency, var.entity, var.direction, var.key, var.value, var.depth, breadth=var.breadth, skip.num.addresses=var.skip.num.addresses)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **direction** | Enum [in, out] | Incoming or outgoing neighbors | 
 **key** | Enum [category, addresses, entities, total_received, balance] | Match neighbors against one and only one of these properties: - the category the entity belongs to - addresses the entity contains - entity ids - total_received: amount the entity received in total - balance: amount the entity holds finally | 
 **value** | list( **character** )| If key is - category: comma separated list of category names - addresses: comma separated list of address IDs - entities: comma separated list of entity IDs - total_received/balance: comma separated tuple of (currency, min, max) where currency is &#39;value&#39; for the cryptocurrency value or an ISO currency code | 
 **depth** | **integer**| How many hops should the transaction graph be searched | 
 **breadth** | **integer**| How many siblings of each neighbor should be tried | [optional] [default to 16]
 **skip.num.addresses** | **integer**| Skip entities containing more addresses | [optional] 

### Return type

[**SearchResultLevel1**](search_result_level1.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


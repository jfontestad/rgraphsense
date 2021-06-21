# EntitiesApi

All URIs are relative to *http://openapi_server:9000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetEntity**](EntitiesApi.md#GetEntity) | **GET** /{currency}/entities/{entity} | Get an entity, optionally with tags
[**ListEntities**](EntitiesApi.md#ListEntities) | **GET** /{currency}/entities | Get entities
[**ListEntitiesCsv**](EntitiesApi.md#ListEntitiesCsv) | **GET** /{currency}/entities.csv | Get entities as CSV
[**ListEntityAddresses**](EntitiesApi.md#ListEntityAddresses) | **GET** /{currency}/entities/{entity}/addresses | Get an entity&#39;s addresses
[**ListEntityAddressesCsv**](EntitiesApi.md#ListEntityAddressesCsv) | **GET** /{currency}/entities/{entity}/addresses.csv | Get an entity&#39;s addresses as CSV
[**ListEntityNeighbors**](EntitiesApi.md#ListEntityNeighbors) | **GET** /{currency}/entities/{entity}/neighbors | Get an entity&#39;s neighbors in the entity graph
[**ListEntityNeighborsCsv**](EntitiesApi.md#ListEntityNeighborsCsv) | **GET** /{currency}/entities/{entity}/neighbors.csv | Get an entity&#39;s neighbors in the entity graph as CSV
[**ListTagsByEntity**](EntitiesApi.md#ListTagsByEntity) | **GET** /{currency}/entities/{entity}/tags | Get tags for a given entity
[**ListTagsByEntityByLevelCsv**](EntitiesApi.md#ListTagsByEntityByLevelCsv) | **GET** /{currency}/entities/{entity}/tags.csv | Get address or entity tags for a given entity as CSV
[**SearchEntityNeighbors**](EntitiesApi.md#SearchEntityNeighbors) | **GET** /{currency}/entities/{entity}/search | Search deeply for matching neighbors


# **GetEntity**
> Entity GetEntity(currency, entity, include.tags=FALSE, tag.coherence=FALSE)

Get an entity, optionally with tags

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.include.tags <- FALSE # character | Whether tags should be included
var.tag.coherence <- FALSE # character | Whether to calculate coherence of address tags

#Get an entity, optionally with tags
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$GetEntity(var.currency, var.entity, include.tags=var.include.tags, tag.coherence=var.tag.coherence)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
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

# **ListEntities**
> Entities ListEntities(currency, ids=var.ids, page=var.page, pagesize=var.pagesize)

Get entities

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.ids <- list("inner_example") # array[character] | Restrict result to given set of comma separated IDs
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get entities
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListEntities(var.currency, ids=var.ids, page=var.page, pagesize=var.pagesize)
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

[**Entities**](entities.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListEntitiesCsv**
> character ListEntitiesCsv(currency, ids)

Get entities as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.ids <- list("inner_example") # array[character] | Set of comma separated IDs

#Get entities as CSV
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListEntitiesCsv(var.currency, var.ids)
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
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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

# **ListEntityAddressesCsv**
> character ListEntityAddressesCsv(currency, entity)

Get an entity's addresses as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID

#Get an entity's addresses as CSV
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListEntityAddressesCsv(var.currency, var.entity)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 

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

# **ListEntityNeighbors**
> Neighbors ListEntityNeighbors(currency, entity, direction, ids=var.ids, include.labels=FALSE, page=var.page, pagesize=var.pagesize)

Get an entity's neighbors in the entity graph

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.ids <- list("inner_example") # array[character] | Restrict result to given set of comma separated IDs
var.include.labels <- FALSE # character | Whether labels of tags should be included
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Get an entity's neighbors in the entity graph
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListEntityNeighbors(var.currency, var.entity, var.direction, ids=var.ids, include.labels=var.include.labels, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **direction** | Enum [in, out] | Incoming or outgoing neighbors | 
 **ids** | list( **character** )| Restrict result to given set of comma separated IDs | [optional] 
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

# **ListEntityNeighborsCsv**
> character ListEntityNeighborsCsv(currency, entity, direction, include.labels=FALSE)

Get an entity's neighbors in the entity graph as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.include.labels <- FALSE # character | Whether labels of tags should be included

#Get an entity's neighbors in the entity graph as CSV
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListEntityNeighborsCsv(var.currency, var.entity, var.direction, include.labels=var.include.labels)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
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
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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

# **ListTagsByEntityByLevelCsv**
> character ListTagsByEntityByLevelCsv(currency, entity, level)

Get address or entity tags for a given entity as CSV

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.level <- 'address' # character | Whether tags on the address or entity level are requested

#Get address or entity tags for a given entity as CSV
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListTagsByEntityByLevelCsv(var.currency, var.entity, var.level)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency (e.g., btc) | 
 **entity** | **integer**| The entity ID | 
 **level** | Enum [address, entity] | Whether tags on the address or entity level are requested | 

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

# **SearchEntityNeighbors**
> array[SearchResultLevel1] SearchEntityNeighbors(currency, entity, direction, key, value, depth, breadth=16, skip.num.addresses=var.skip.num.addresses)

Search deeply for matching neighbors

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)
var.entity <- 67065 # integer | The entity ID
var.direction <- 'out' # character | Incoming or outgoing neighbors
var.key <- 'category' # character | Match neighbors against one and only one of these properties: - the category the entity belongs to - addresses the entity contains - entity ids - total_received: amount the entity received in total - balance: amount the entity holds finally
var.value <- list("inner_example") # array[character] | If key is - category: comma separated list of category names - addresses: comma separated list of address IDs - entities: comma separated list of entity IDs - total_received/balance: comma separated tuple of (currency, min, max)
var.depth <- 2 # integer | How many hops should the transaction graph be searched
var.breadth <- 16 # integer | How many siblings of each neighbor should be tried
var.skip.num.addresses <- 56 # integer | Skip entities containing more addresses

#Search deeply for matching neighbors
api.instance <- EntitiesApi$new()
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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
 **value** | list( **character** )| If key is - category: comma separated list of category names - addresses: comma separated list of address IDs - entities: comma separated list of entity IDs - total_received/balance: comma separated tuple of (currency, min, max) | 
 **depth** | **integer**| How many hops should the transaction graph be searched | 
 **breadth** | **integer**| How many siblings of each neighbor should be tried | [optional] [default to 16]
 **skip.num.addresses** | **integer**| Skip entities containing more addresses | [optional] 

### Return type

[**array[SearchResultLevel1]**](search_result_level1.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


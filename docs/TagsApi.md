# TagsApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListConcepts**](TagsApi.md#ListConcepts) | **GET** /tags/taxonomies/{taxonomy}/concepts | Returns the supported concepts of a taxonomy
[**ListTags**](TagsApi.md#ListTags) | **GET** /{currency}/tags | Returns address or entity tags associated with a given label
[**ListTaxonomies**](TagsApi.md#ListTaxonomies) | **GET** /tags/taxonomies | Returns the supported taxonomies


# **ListConcepts**
> array[Concept] ListConcepts(taxonomy)

Returns the supported concepts of a taxonomy

### Example
```R
library(openapi)

var.taxonomy <- 'foo' # character | The taxonomy

#Returns the supported concepts of a taxonomy
api.instance <- TagsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListConcepts(var.taxonomy)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taxonomy** | **character**| The taxonomy | 

### Return type

[**array[Concept]**](concept.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |

# **ListTags**
> Tags ListTags(currency, label, level, page=var.page, pagesize=var.pagesize)

Returns address or entity tags associated with a given label

### Example
```R
library(openapi)

var.currency <- 'btc' # character | The cryptocurrency code (e.g., btc)
var.label <- 'cimedy' # character | The label of an entity
var.level <- 'address' # character | Whether tags on the address or entity level are requested
var.page <- 'page_example' # character | Resumption token for retrieving the next page
var.pagesize <- 10 # integer | Number of items returned in a single page

#Returns address or entity tags associated with a given label
api.instance <- TagsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListTags(var.currency, var.label, var.level, page=var.page, pagesize=var.pagesize)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **currency** | **character**| The cryptocurrency code (e.g., btc) | 
 **label** | **character**| The label of an entity | 
 **level** | Enum [address, entity] | Whether tags on the address or entity level are requested | 
 **page** | **character**| Resumption token for retrieving the next page | [optional] 
 **pagesize** | **integer**| Number of items returned in a single page | [optional] 

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

# **ListTaxonomies**
> array[Taxonomy] ListTaxonomies()

Returns the supported taxonomies

### Example
```R
library(openapi)


#Returns the supported taxonomies
api.instance <- TagsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'WRITE_YOUR_API_KEY_HERE';
result <- api.instance$ListTaxonomies()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Taxonomy]**](taxonomy.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | OK |  -  |


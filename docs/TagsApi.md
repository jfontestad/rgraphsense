# TagsApi

All URIs are relative to *https://api.graphsense.info*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ListConcepts**](TagsApi.md#ListConcepts) | **GET** /tags/taxonomies/{taxonomy}/concepts | Returns the supported concepts of a taxonomy
[**ListTags**](TagsApi.md#ListTags) | **GET** /tags | Returns address and entity tags associated with a given label
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
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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
> array[Tags] ListTags(label, currency=var.currency)

Returns address and entity tags associated with a given label

### Example
```R
library(openapi)

var.label <- 'cimedy' # character | The label of an entity
var.currency <- 'btc' # character | The cryptocurrency (e.g., btc)

#Returns address and entity tags associated with a given label
api.instance <- TagsApi$new()
api.instance$apiClient$basePath <- 'https://api.graphsense.info';
# Configure API key authorization: api_key
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
result <- api.instance$ListTags(var.label, currency=var.currency)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **label** | **character**| The label of an entity | 
 **currency** | **character**| The cryptocurrency (e.g., btc) | [optional] 

### Return type

[**array[Tags]**](tags.md)

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
api.instance$apiClient$apiKeys['Authorization'] <- 'TODO_YOUR_API_KEY';
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


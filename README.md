# R API client for openapi

GraphSense API

## Overview
This API client was generated by the [OpenAPI Generator](https://openapi-generator.tech) project. By using the [OpenAPI spec](https://openapis.org) from a remote server, you can easily generate an API client.

- API version: 0.5
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RClientCodegen

## Installation

### Prerequisites

Install the dependencies

```R
install.packages("jsonlite")
install.packages("httr")
install.packages("base64enc")
```

### Build the package

```sh
git clone https://github.com/GIT_USER_ID/GIT_REPO_ID
cd GIT_REPO_ID
R CMD build .
R CMD check openapi_1.0.0.tar.gz --no-manual
R CMD INSTALL openapi_1.0.0.tar.gz
```

### Install the package

```R
install.packages("openapi")
```

To install directly from Github, use `devtools`:
```R
install.packages("devtools")
library(devtools)
install_github("GIT_USER_ID/GIT_REPO_ID")
```

### Usage

```R
library(openapi)
```

## Documentation for API Endpoints

All URIs are relative to *http://openapi_server:9000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AddressesApi* | [**GetAddress**](docs/AddressesApi.md#GetAddress) | **GET** /{currency}/addresses/{address} | Get an address, optionally with tags
*AddressesApi* | [**GetAddressEntity**](docs/AddressesApi.md#GetAddressEntity) | **GET** /{currency}/addresses/{address}/entity | Get the entity of an address
*AddressesApi* | [**ListAddressLinks**](docs/AddressesApi.md#ListAddressLinks) | **GET** /{currency}/addresses/{address}/links | Get transactions between two addresses
*AddressesApi* | [**ListAddressLinksCsv**](docs/AddressesApi.md#ListAddressLinksCsv) | **GET** /{currency}/addresses/{address}/links.csv | Get transactions between two addresses as CSV
*AddressesApi* | [**ListAddressNeighbors**](docs/AddressesApi.md#ListAddressNeighbors) | **GET** /{currency}/addresses/{address}/neighbors | Get an addresses' neighbors in the address graph
*AddressesApi* | [**ListAddressNeighborsCsv**](docs/AddressesApi.md#ListAddressNeighborsCsv) | **GET** /{currency}/addresses/{address}/neighbors.csv | Get an addresses' neighbors in the address graph as CSV
*AddressesApi* | [**ListAddressTxs**](docs/AddressesApi.md#ListAddressTxs) | **GET** /{currency}/addresses/{address}/txs | Get all transactions an address has been involved in
*AddressesApi* | [**ListAddressTxsCsv**](docs/AddressesApi.md#ListAddressTxsCsv) | **GET** /{currency}/addresses/{address}/txs.csv | Get all transactions an address has been involved in as CSV
*AddressesApi* | [**ListAddresses**](docs/AddressesApi.md#ListAddresses) | **GET** /{currency}/addresses | Get addresses
*AddressesApi* | [**ListAddressesCsv**](docs/AddressesApi.md#ListAddressesCsv) | **GET** /{currency}/addresses.csv | Get addresses as CSV
*AddressesApi* | [**ListTagsByAddress**](docs/AddressesApi.md#ListTagsByAddress) | **GET** /{currency}/addresses/{address}/tags | Get attribution tags for a given address
*AddressesApi* | [**ListTagsByAddressCsv**](docs/AddressesApi.md#ListTagsByAddressCsv) | **GET** /{currency}/addresses/{address}/tags.csv | Get attribution tags for a given address
*BlocksApi* | [**GetBlock**](docs/BlocksApi.md#GetBlock) | **GET** /{currency}/blocks/{height} | Get a block by its height
*BlocksApi* | [**ListBlockTxs**](docs/BlocksApi.md#ListBlockTxs) | **GET** /{currency}/blocks/{height}/txs | Get block transactions (100 per page)
*BlocksApi* | [**ListBlockTxsCsv**](docs/BlocksApi.md#ListBlockTxsCsv) | **GET** /{currency}/blocks/{height}/txs.csv | Get block transactions as CSV
*BlocksApi* | [**ListBlocks**](docs/BlocksApi.md#ListBlocks) | **GET** /{currency}/blocks | Get all blocks
*EntitiesApi* | [**GetEntity**](docs/EntitiesApi.md#GetEntity) | **GET** /{currency}/entities/{entity} | Get an entity, optionally with tags
*EntitiesApi* | [**ListEntities**](docs/EntitiesApi.md#ListEntities) | **GET** /{currency}/entities | Get entities
*EntitiesApi* | [**ListEntitiesCsv**](docs/EntitiesApi.md#ListEntitiesCsv) | **GET** /{currency}/entities.csv | Get entities as CSV
*EntitiesApi* | [**ListEntityAddresses**](docs/EntitiesApi.md#ListEntityAddresses) | **GET** /{currency}/entities/{entity}/addresses | Get an entity's addresses
*EntitiesApi* | [**ListEntityAddressesCsv**](docs/EntitiesApi.md#ListEntityAddressesCsv) | **GET** /{currency}/entities/{entity}/addresses.csv | Get an entity's addresses as CSV
*EntitiesApi* | [**ListEntityNeighbors**](docs/EntitiesApi.md#ListEntityNeighbors) | **GET** /{currency}/entities/{entity}/neighbors | Get an entity's neighbors in the entity graph
*EntitiesApi* | [**ListEntityNeighborsCsv**](docs/EntitiesApi.md#ListEntityNeighborsCsv) | **GET** /{currency}/entities/{entity}/neighbors.csv | Get an entity's neighbors in the entity graph as CSV
*EntitiesApi* | [**ListTagsByEntity**](docs/EntitiesApi.md#ListTagsByEntity) | **GET** /{currency}/entities/{entity}/tags | Get tags for a given entity
*EntitiesApi* | [**ListTagsByEntityByLevelCsv**](docs/EntitiesApi.md#ListTagsByEntityByLevelCsv) | **GET** /{currency}/entities/{entity}/tags.csv | Get address or entity tags for a given entity as CSV
*EntitiesApi* | [**SearchEntityNeighbors**](docs/EntitiesApi.md#SearchEntityNeighbors) | **GET** /{currency}/entities/{entity}/search | Search deeply for matching neighbors
*GeneralApi* | [**GetStatistics**](docs/GeneralApi.md#GetStatistics) | **GET** /stats | Get statistics of supported currencies
*GeneralApi* | [**Search**](docs/GeneralApi.md#Search) | **GET** /search | Returns matching addresses, transactions and labels
*RatesApi* | [**GetExchangeRates**](docs/RatesApi.md#GetExchangeRates) | **GET** /{currency}/rates/{height} | Returns exchange rate for a given height
*TagsApi* | [**ListConcepts**](docs/TagsApi.md#ListConcepts) | **GET** /tags/taxonomies/{taxonomy}/concepts | Returns the supported concepts of a taxonomy
*TagsApi* | [**ListTags**](docs/TagsApi.md#ListTags) | **GET** /tags | Returns address and entity tags associated with a given label
*TagsApi* | [**ListTaxonomies**](docs/TagsApi.md#ListTaxonomies) | **GET** /tags/taxonomies | Returns the supported taxonomies
*TxsApi* | [**GetTx**](docs/TxsApi.md#GetTx) | **GET** /{currency}/txs/{tx_hash} | Returns details of a specific transaction identified by its hash.
*TxsApi* | [**ListTxs**](docs/TxsApi.md#ListTxs) | **GET** /{currency}/txs | Returns transactions


## Documentation for Models

 - [Address](docs/Address.md)
 - [AddressTag](docs/AddressTag.md)
 - [AddressTagAllOf](docs/AddressTagAllOf.md)
 - [AddressTx](docs/AddressTx.md)
 - [AddressTxUtxo](docs/AddressTxUtxo.md)
 - [AddressTxs](docs/AddressTxs.md)
 - [Addresses](docs/Addresses.md)
 - [Block](docs/Block.md)
 - [BlockTx](docs/BlockTx.md)
 - [BlockTxUtxo](docs/BlockTxUtxo.md)
 - [Blocks](docs/Blocks.md)
 - [Concept](docs/Concept.md)
 - [CurrencyStats](docs/CurrencyStats.md)
 - [Entities](docs/Entities.md)
 - [Entity](docs/Entity.md)
 - [EntityAddresses](docs/EntityAddresses.md)
 - [EntityTag](docs/EntityTag.md)
 - [EntityTagAllOf](docs/EntityTagAllOf.md)
 - [Link](docs/Link.md)
 - [LinkUtxo](docs/LinkUtxo.md)
 - [Neighbor](docs/Neighbor.md)
 - [Neighbors](docs/Neighbors.md)
 - [Rates](docs/Rates.md)
 - [RatesRates](docs/RatesRates.md)
 - [SearchResult](docs/SearchResult.md)
 - [SearchResultByCurrency](docs/SearchResultByCurrency.md)
 - [SearchResultLeaf](docs/SearchResultLeaf.md)
 - [SearchResultLevel1](docs/SearchResultLevel1.md)
 - [SearchResultLevel1AllOf](docs/SearchResultLevel1AllOf.md)
 - [SearchResultLevel2](docs/SearchResultLevel2.md)
 - [SearchResultLevel2AllOf](docs/SearchResultLevel2AllOf.md)
 - [SearchResultLevel3](docs/SearchResultLevel3.md)
 - [SearchResultLevel3AllOf](docs/SearchResultLevel3AllOf.md)
 - [SearchResultLevel4](docs/SearchResultLevel4.md)
 - [SearchResultLevel4AllOf](docs/SearchResultLevel4AllOf.md)
 - [SearchResultLevel5](docs/SearchResultLevel5.md)
 - [SearchResultLevel5AllOf](docs/SearchResultLevel5AllOf.md)
 - [SearchResultLevel6](docs/SearchResultLevel6.md)
 - [SearchResultLevel6AllOf](docs/SearchResultLevel6AllOf.md)
 - [Stats](docs/Stats.md)
 - [StatsLedger](docs/StatsLedger.md)
 - [StatsLedgerVersion](docs/StatsLedgerVersion.md)
 - [StatsNote](docs/StatsNote.md)
 - [StatsTagsSource](docs/StatsTagsSource.md)
 - [StatsTool](docs/StatsTool.md)
 - [StatsVersion](docs/StatsVersion.md)
 - [Tag](docs/Tag.md)
 - [Tags](docs/Tags.md)
 - [Taxonomy](docs/Taxonomy.md)
 - [Tx](docs/Tx.md)
 - [TxAccount](docs/TxAccount.md)
 - [TxSummary](docs/TxSummary.md)
 - [TxUtxo](docs/TxUtxo.md)
 - [TxValue](docs/TxValue.md)
 - [Txs](docs/Txs.md)
 - [Values](docs/Values.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header



## Author




# R client for the GraphSense REST API

This R package provides functions to access to REST API of the
[GraphSense][graphsense] cryptocurrency analytics platform.

## Installation

- Install the `devtools` package

```
install.packages("devtools")
```

- Install the `graphsense` package from GitHub

```
library("devtools")
install_github("graphsense/rgraphsense")
```

## Usage

An access token is required to use the provided functions in the
`graphsense` package. After loading the package execute the
`set_token()` function

```
library("graphsense")
set_token("YOUR_API_TOKEN")

block(1)
# # A tibble: 1 x 4
#   blockHash                                      height noTransactions timestamp
#   <chr>                                           <int>          <int>     <int>
# 1 00000000839a8e6886ab5951d76f411475428afc90947…      1              1    1.23e9
```

[graphsense]: https://graphsense.info

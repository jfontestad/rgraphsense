# openapi::TxUtxo


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**coinbase** | **character** | Coinbase transaction flag | 
**height** | **integer** | Height | 
**inputs** | [**array[TxValue]**](tx_value.md) | Transaction inputs/outputs | [optional] 
**outputs** | [**array[TxValue]**](tx_value.md) | Transaction inputs/outputs | [optional] 
**timestamp** | **integer** | Timestamp | 
**total_input** | [**Values**](values.md) |  | 
**total_output** | [**Values**](values.md) |  | 
**tx_hash** | **character** | Transaction hash | 
**tx_type** | **character** |  | [default to &#39;utxo&#39;]



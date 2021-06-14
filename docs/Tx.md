# openapi::Tx


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**currency_type** | **character** |  | [default to &#39;account&#39;]
**tx_hash** | **character** | Transaction hash | 
**coinbase** | **character** | Coinbase transaction flag | 
**height** | **integer** | Height | 
**inputs** | [**array[TxValue]**](tx_value.md) | Transaction inputs/outputs | 
**outputs** | [**array[TxValue]**](tx_value.md) | Transaction inputs/outputs | 
**timestamp** | **integer** | Timestamp | 
**total_input** | [**Values**](values.md) |  | 
**total_output** | [**Values**](values.md) |  | 
**values** | [**Values**](values.md) |  | 



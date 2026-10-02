# PostCustomerTokenIdpModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**customerGuid** | **String** | Customer guid the access token is being generated for. | 
**scopes** | **Set<String>** | List of the scopes requested for the access token. | 
**inheritIpAllowlist** | **Bool** | When true, the customer token inherits the IP allowlist of the bank API key that creates it. | [optional] [default to true]
**ipAllowlist** | **[String]** | List of public IPv4 addresses or CIDR ranges the customer token is restricted to. Combined with the inherited allowlist when inherit_ip_allowlist is true. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



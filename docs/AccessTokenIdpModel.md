# AccessTokenIdpModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | Identifier of the access token. | 
**applicationClientId** | **String** | Client ID of the application the token was issued to. | 
**applicationGuid** | **String** | Guid of the organization, bank or customer the issuing application belongs to. | 
**resourceOwnerType** | **String** | Type of the resource owner: user, or application for customer tokens owned by a bank application. | 
**resourceOwnerGuid** | **String** | Guid of the user, or of the bank that owns the owning application. | 
**createdAt** | **Date** | ISO8601 datetime the token was created at. | 
**expiresIn** | **Int** | Lifetime of the token in seconds. Null for tokens that do not expire. | 
**revokedAt** | **Date** | ISO8601 datetime the token was revoked at. Null for tokens that are not revoked. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



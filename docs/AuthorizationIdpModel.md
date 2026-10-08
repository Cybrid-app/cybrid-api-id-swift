# AuthorizationIdpModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Int** | Identifier of the user authorization. | 
**userGuid** | **String** | Guid of the user. | 
**resourceType** | **String** | Type of the resource the authorization is on. | 
**resourceGuid** | **String** | Guid of the resource the authorization is on. | 
**portal** | **String** | Portal the authorization routes to. Null for authorizations that have no portal. | 
**allowedScopes** | **[String]** | The list of scopes that the user is allowed to request. | 
**disabledAt** | **Date** | ISO8601 datetime the authorization was disabled at. Null for enabled authorizations. | 
**createdAt** | **Date** | ISO8601 datetime the record was created at. | 
**updatedAt** | **Date** | ISO8601 datetime the record was last updated at. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



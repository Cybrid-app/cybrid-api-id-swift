# InternalOrganizationApplicationAPI

All URIs are relative to *http://api-idp.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**internalCreateOrganizationApplications**](InternalOrganizationApplicationAPI.md#internalcreateorganizationapplications) | **POST** /api/internal/applications | Create organization application


# **internalCreateOrganizationApplications**
```swift
    open class func internalCreateOrganizationApplications(postInternalOrganizationApplicationIdpModel: PostInternalOrganizationApplicationIdpModel, completion: @escaping (_ data: ApplicationWithSecretIdpModel?, _ error: Error?) -> Void)
```

Create organization application

Create an organization OAuth2 application.  Required scope: **internal:organizations:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdSwift

let postInternalOrganizationApplicationIdpModel = PostInternalOrganizationApplication(name: "name_example", ownerGuid: "ownerGuid_example", scopes: ["scopes_example"]) // PostInternalOrganizationApplicationIdpModel | 

// Create organization application
InternalOrganizationApplicationAPI.internalCreateOrganizationApplications(postInternalOrganizationApplicationIdpModel: postInternalOrganizationApplicationIdpModel) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **postInternalOrganizationApplicationIdpModel** | [**PostInternalOrganizationApplicationIdpModel**](PostInternalOrganizationApplicationIdpModel.md) |  | 

### Return type

[**ApplicationWithSecretIdpModel**](ApplicationWithSecretIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


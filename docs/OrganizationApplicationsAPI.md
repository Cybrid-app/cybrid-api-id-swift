# OrganizationApplicationsAPI

All URIs are relative to *http://api-idp.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrganizationApplication**](OrganizationApplicationsAPI.md#createorganizationapplication) | **POST** /api/organization_applications | Create organization application
[**listOrganizationApplications**](OrganizationApplicationsAPI.md#listorganizationapplications) | **GET** /api/organization_applications | List organization applications


# **createOrganizationApplication**
```swift
    open class func createOrganizationApplication(postOrganizationApplicationIdpModel: PostOrganizationApplicationIdpModel, completion: @escaping (_ data: ApplicationWithSecretIdpModel?, _ error: Error?) -> Void)
```

Create organization application

Create an organization OAuth2 application.  Required scope: **organizations:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let postOrganizationApplicationIdpModel = PostOrganizationApplication(name: "name_example") // PostOrganizationApplicationIdpModel | 

// Create organization application
OrganizationApplicationsAPI.createOrganizationApplication(postOrganizationApplicationIdpModel: postOrganizationApplicationIdpModel) { (response, error) in
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
 **postOrganizationApplicationIdpModel** | [**PostOrganizationApplicationIdpModel**](PostOrganizationApplicationIdpModel.md) |  | 

### Return type

[**ApplicationWithSecretIdpModel**](ApplicationWithSecretIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationApplications**
```swift
    open class func listOrganizationApplications(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ApplicationListIdpModel?, _ error: Error?) -> Void)
```

List organization applications

Retrieve a list of organization OAuth2 applications.  Required scope: **organizations:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)

// List organization applications
OrganizationApplicationsAPI.listOrganizationApplications(page: page, perPage: perPage) { (response, error) in
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
 **page** | **Int** | The page index to retrieve. | [optional] 
 **perPage** | **Int** | The number of entities per page to return. | [optional] 

### Return type

[**ApplicationListIdpModel**](ApplicationListIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


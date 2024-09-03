# OrganizationApplicationsAPI

All URIs are relative to *https://id.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createOrganizationApplication**](OrganizationApplicationsAPI.md#createorganizationapplication) | **POST** /api/organization_applications | Create organization application
[**deleteOrganizationApplication**](OrganizationApplicationsAPI.md#deleteorganizationapplication) | **DELETE** /api/organization_applications/{client_id} | Delete organization application
[**listOrganizationApplications**](OrganizationApplicationsAPI.md#listorganizationapplications) | **GET** /api/organization_applications | List organization applications


# **createOrganizationApplication**
```swift
    open class func createOrganizationApplication(postOrganizationApplication: PostOrganizationApplication, completion: @escaping (_ data: ApplicationWithSecret?, _ error: Error?) -> Void)
```

Create organization application

Create an organization OAuth2 application.  Required scope: **organization_applications:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let postOrganizationApplication = PostOrganizationApplication(name: "name_example") // PostOrganizationApplication | 

// Create organization application
OrganizationApplicationsAPI.createOrganizationApplication(postOrganizationApplication: postOrganizationApplication) { (response, error) in
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
 **postOrganizationApplication** | [**PostOrganizationApplication**](PostOrganizationApplication.md) |  | 

### Return type

[**ApplicationWithSecret**](ApplicationWithSecret.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteOrganizationApplication**
```swift
    open class func deleteOrganizationApplication(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete organization application

Deletes an application.Required scope: **organization_applications:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let clientId = "clientId_example" // String | Identifier for the application.

// Delete organization application
OrganizationApplicationsAPI.deleteOrganizationApplication(clientId: clientId) { (response, error) in
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
 **clientId** | **String** | Identifier for the application. | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listOrganizationApplications**
```swift
    open class func listOrganizationApplications(page: Int? = nil, perPage: Int? = nil, completion: @escaping (_ data: ApplicationList?, _ error: Error?) -> Void)
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

[**ApplicationList**](ApplicationList.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


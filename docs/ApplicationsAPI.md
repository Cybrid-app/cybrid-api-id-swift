# ApplicationsAPI

All URIs are relative to *https://id.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**discardApplication**](ApplicationsAPI.md#discardapplication) | **DELETE** /api/applications/{client_id} | Discard Application


# **discardApplication**
```swift
    open class func discardApplication(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Discard Application

Discards an application. Application is not deleted, all access tokens are revoked.Required scope: **organization_applications:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let clientId = "clientId_example" // String | Identifier for the application.

// Discard Application
ApplicationsAPI.discardApplication(clientId: clientId) { (response, error) in
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


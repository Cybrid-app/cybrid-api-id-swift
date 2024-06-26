# BankApplicationsAPI

All URIs are relative to *https://id.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBankApplication**](BankApplicationsAPI.md#createbankapplication) | **POST** /api/bank_applications | Create bank application
[**deleteBankApplication**](BankApplicationsAPI.md#deletebankapplication) | **DELETE** /api/bank_applications/{client_id} | Delete bank application
[**listBankApplications**](BankApplicationsAPI.md#listbankapplications) | **GET** /api/bank_applications | List bank applications


# **createBankApplication**
```swift
    open class func createBankApplication(postBankApplicationIdpModel: PostBankApplicationIdpModel, completion: @escaping (_ data: ApplicationWithSecretIdpModel?, _ error: Error?) -> Void)
```

Create bank application

Creates a bank OAuth2 application.  Required scope: **bank_applications:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let postBankApplicationIdpModel = PostBankApplication(name: "name_example", bankGuid: "bankGuid_example") // PostBankApplicationIdpModel | 

// Create bank application
BankApplicationsAPI.createBankApplication(postBankApplicationIdpModel: postBankApplicationIdpModel) { (response, error) in
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
 **postBankApplicationIdpModel** | [**PostBankApplicationIdpModel**](PostBankApplicationIdpModel.md) |  | 

### Return type

[**ApplicationWithSecretIdpModel**](ApplicationWithSecretIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteBankApplication**
```swift
    open class func deleteBankApplication(clientId: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Delete bank application

Deletes an application.Required scope: **bank_applications:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let clientId = "clientId_example" // String | Identifier for the application.

// Delete bank application
BankApplicationsAPI.deleteBankApplication(clientId: clientId) { (response, error) in
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

# **listBankApplications**
```swift
    open class func listBankApplications(page: Int? = nil, perPage: Int? = nil, bankGuid: String? = nil, completion: @escaping (_ data: ApplicationListIdpModel?, _ error: Error?) -> Void)
```

List bank applications

Retrieve a list of bank OAuth2 applications.  Required scope: **banks:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let bankGuid = "bankGuid_example" // String | Bank guid to list applications for. (optional)

// List bank applications
BankApplicationsAPI.listBankApplications(page: page, perPage: perPage, bankGuid: bankGuid) { (response, error) in
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
 **bankGuid** | **String** | Bank guid to list applications for. | [optional] 

### Return type

[**ApplicationListIdpModel**](ApplicationListIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


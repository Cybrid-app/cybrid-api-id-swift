# CustomerTokensAPI

All URIs are relative to *https://id.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerToken**](CustomerTokensAPI.md#createcustomertoken) | **POST** /api/customer_tokens | Create customer access token


# **createCustomerToken**
```swift
    open class func createCustomerToken(postCustomerToken: PostCustomerToken, completion: @escaping (_ data: CustomerToken?, _ error: Error?) -> Void)
```

Create customer access token

Creates a customer JWT access token.  Required scopes: **customers:write** and **customers:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let postCustomerToken = PostCustomerToken(customerGuid: "customerGuid_example", scopes: ["scopes_example"]) // PostCustomerToken | 

// Create customer access token
CustomerTokensAPI.createCustomerToken(postCustomerToken: postCustomerToken) { (response, error) in
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
 **postCustomerToken** | [**PostCustomerToken**](PostCustomerToken.md) |  | 

### Return type

[**CustomerToken**](CustomerToken.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


# CustomerTokensAPI

All URIs are relative to *http://api-idp.cybrid.local*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createCustomerToken**](CustomerTokensAPI.md#createcustomertoken) | **POST** /api/customer_tokens | Create customer access token


# **createCustomerToken**
```swift
    open class func createCustomerToken(postCustomerTokenIdpModel: PostCustomerTokenIdpModel, completion: @escaping (_ data: CustomerTokenIdpModel?, _ error: Error?) -> Void)
```

Create customer access token

Creates a customer JWT access token.  Required scope: **customers:write**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let postCustomerTokenIdpModel = PostCustomerToken(customerGuid: "customerGuid_example", scopes: ["scopes_example"]) // PostCustomerTokenIdpModel | 

// Create customer access token
CustomerTokensAPI.createCustomerToken(postCustomerTokenIdpModel: postCustomerTokenIdpModel) { (response, error) in
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
 **postCustomerTokenIdpModel** | [**PostCustomerTokenIdpModel**](PostCustomerTokenIdpModel.md) |  | 

### Return type

[**CustomerTokenIdpModel**](CustomerTokenIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


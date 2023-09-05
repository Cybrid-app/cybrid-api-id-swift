# UserAPI

All URIs are relative to *https://id.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserAPI.md#createuser) | **POST** /api/users | Create user


# **createUser**
```swift
    open class func createUser(postUserIdpModel: PostUserIdpModel, completion: @escaping (_ data: UserIdpModel?, _ error: Error?) -> Void)
```

Create user

Creates a user.  

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let postUserIdpModel = PostUser(email: "email_example") // PostUserIdpModel | 

// Create user
UserAPI.createUser(postUserIdpModel: postUserIdpModel) { (response, error) in
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
 **postUserIdpModel** | [**PostUserIdpModel**](PostUserIdpModel.md) |  | 

### Return type

[**UserIdpModel**](UserIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


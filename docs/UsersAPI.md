# UsersAPI

All URIs are relative to *https://id.sandbox.cybrid.app*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UsersAPI.md#createuser) | **POST** /api/users | Create user
[**disableUser**](UsersAPI.md#disableuser) | **DELETE** /api/users/{user_guid} | Disable User
[**getUser**](UsersAPI.md#getuser) | **GET** /api/users/{user_guid} | Get User
[**listUser**](UsersAPI.md#listuser) | **GET** /api/users | List users


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
UsersAPI.createUser(postUserIdpModel: postUserIdpModel) { (response, error) in
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

# **disableUser**
```swift
    open class func disableUser(userGuid: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```

Disable User

Disables a user. User is not deleted.  Required scope: **users:execute**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let userGuid = "userGuid_example" // String | Identifier for the user.

// Disable User
UsersAPI.disableUser(userGuid: userGuid) { (response, error) in
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
 **userGuid** | **String** | Identifier for the user. | 

### Return type

Void (empty response body)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```swift
    open class func getUser(userGuid: String, completion: @escaping (_ data: UserIdpModel?, _ error: Error?) -> Void)
```

Get User

Retrieves a user.  Required scope: **users:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let userGuid = "userGuid_example" // String | Identifier for the user.

// Get User
UsersAPI.getUser(userGuid: userGuid) { (response, error) in
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
 **userGuid** | **String** | Identifier for the user. | 

### Return type

[**UserIdpModel**](UserIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listUser**
```swift
    open class func listUser(page: Int? = nil, perPage: Int? = nil, guid: String? = nil, completion: @escaping (_ data: UserListIdpModel?, _ error: Error?) -> Void)
```

List users

Retrieve a list users.  Required scope: **users:read**

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import CybridApiIdpSwift

let page = 987 // Int | The page index to retrieve. (optional)
let perPage = 987 // Int | The number of entities per page to return. (optional)
let guid = "guid_example" // String | Comma separated guids to list users for. (optional)

// List users
UsersAPI.listUser(page: page, perPage: perPage, guid: guid) { (response, error) in
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
 **guid** | **String** | Comma separated guids to list users for. | [optional] 

### Return type

[**UserListIdpModel**](UserListIdpModel.md)

### Authorization

[BearerAuth](../README.md#BearerAuth), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


**STRUCT**

# `Request.Options`

```swift
public struct Options
```

## Properties
### `dollarXgafv`

```swift
public var dollarXgafv: Xgafv?
```

V1 error format.

### `accessToken`

```swift
public var accessToken: String?
```

OAuth access token.

### `alt`

```swift
public var alt: Alt?
```

Data format for response.

### `callback`

```swift
public var callback: String?
```

JSONP

### `fields`

```swift
public var fields: String?
```

Selector specifying which fields to include in a partial response.

### `key`

```swift
public var key: String?
```

API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.

### `oauthToken`

```swift
public var oauthToken: String?
```

OAuth 2.0 token for the current user.

### `prettyPrint`

```swift
public var prettyPrint: Bool?
```

Returns response with indentations and line breaks.

### `quotaUser`

```swift
public var quotaUser: String?
```

Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.

### `uploadProtocol`

```swift
public var uploadProtocol: String?
```

Upload protocol for media (e.g. "raw", "multipart").

### `uploadType`

```swift
public var uploadType: String?
```

Legacy upload protocol for media (e.g. "media", "multipart").

### `part`

```swift
public var part: [String]?
```

The *part* parameter specifies a comma-separated list of commentThread resource properties that the API response will include. You must at least include the snippet part in the parameter value since that part contains all of the properties that the API request can update.

## Methods
### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:part:)`

```swift
public init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String]? = nil)
```

**CLASS**

# `YoutubeThirdPartyLinksInsert.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `body`

```swift
public var body: ThirdPartyLink?
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(body:options:encoder:)`

```swift
public init(body: ThirdPartyLink?, options: Options, encoder: RequestEncoder? = nil)
```

### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:part:body:)`

```swift
public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], body: ThirdPartyLink? = nil)
```

convenience initialiser so an Option doesn't have to be created
**CLASS**

# `YoutubeLiveBroadcastsTransition.Request`

```swift
public final class Request: APIRequest<Response>
```

## Properties
### `options`

```swift
public var options: Options
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(options:)`

```swift
public init(options: Options)
```

### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:broadcastStatus:id:part:onBehalfOfContentOwner:onBehalfOfContentOwnerChannel:)`

```swift
public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, broadcastStatus: BroadcastStatus, id: String, part: [String], onBehalfOfContentOwner: String? = nil, onBehalfOfContentOwnerChannel: String? = nil)
```

convenience initialiser so an Option doesn't have to be created

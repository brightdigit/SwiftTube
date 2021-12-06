**CLASS**

# `YoutubeSubscriptionsList.Request`

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

### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:part:channelId:forChannelId:id:maxResults:mine:myRecentSubscribers:mySubscribers:onBehalfOfContentOwner:onBehalfOfContentOwnerChannel:order:pageToken:)`

```swift
public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], channelId: String? = nil, forChannelId: String? = nil, id: [String]? = nil, maxResults: Int? = nil, mine: Bool? = nil, myRecentSubscribers: Bool? = nil, mySubscribers: Bool? = nil, onBehalfOfContentOwner: String? = nil, onBehalfOfContentOwnerChannel: String? = nil, order: Order? = nil, pageToken: String? = nil)
```

convenience initialiser so an Option doesn't have to be created

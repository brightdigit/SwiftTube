**CLASS**

# `YoutubeVideosReportAbuse.Request`

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
public var body: VideoAbuseReport?
```

### `queryParameters`

```swift
override public var queryParameters: [String: Any]
```

## Methods
### `init(body:options:encoder:)`

```swift
public init(body: VideoAbuseReport?, options: Options, encoder: RequestEncoder? = nil)
```

### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:onBehalfOfContentOwner:body:)`

```swift
public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, onBehalfOfContentOwner: String? = nil, body: VideoAbuseReport? = nil)
```

convenience initialiser so an Option doesn't have to be created

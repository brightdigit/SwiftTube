**CLASS**

# `YoutubeVideosList.Request`

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

### `init(dollarXgafv:accessToken:alt:callback:fields:key:oauthToken:prettyPrint:quotaUser:uploadProtocol:uploadType:part:chart:hl:id:locale:maxHeight:maxResults:maxWidth:myRating:onBehalfOfContentOwner:pageToken:regionCode:videoCategoryId:)`

```swift
public convenience init(dollarXgafv: Xgafv? = nil, accessToken: String? = nil, alt: Alt? = nil, callback: String? = nil, fields: String? = nil, key: String? = nil, oauthToken: String? = nil, prettyPrint: Bool? = nil, quotaUser: String? = nil, uploadProtocol: String? = nil, uploadType: String? = nil, part: [String], chart: Chart? = nil, hl: String? = nil, id: [String]? = nil, locale: String? = nil, maxHeight: Int? = nil, maxResults: Int? = nil, maxWidth: Int? = nil, myRating: MyRating? = nil, onBehalfOfContentOwner: String? = nil, pageToken: String? = nil, regionCode: String? = nil, videoCategoryId: String? = nil)
```

convenience initialiser so an Option doesn't have to be created

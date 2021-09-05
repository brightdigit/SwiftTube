**STRUCT**

# `CommentThreadListResponse`

```swift
public struct CommentThreadListResponse: Model
```

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `eventId`

```swift
public var eventId: String?
```

Serialized EventId of the request which produced this response.

### `items`

```swift
public var items: [CommentThread]?
```

A list of comment threads that match the request criteria.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#commentThreadListResponse".

### `nextPageToken`

```swift
public var nextPageToken: String?
```

The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set.

### `pageInfo`

```swift
public var pageInfo: PageInfo?
```

General pagination information.

### `tokenPagination`

```swift
public var tokenPagination: TokenPagination?
```

### `visitorId`

```swift
public var visitorId: String?
```

The visitorId identifies the visitor.

## Methods
### `init(etag:eventId:items:kind:nextPageToken:pageInfo:tokenPagination:visitorId:)`

```swift
public init(etag: String? = nil, eventId: String? = nil, items: [CommentThread]? = nil, kind: String? = nil, nextPageToken: String? = nil, pageInfo: PageInfo? = nil, tokenPagination: TokenPagination? = nil, visitorId: String? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
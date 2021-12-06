**STRUCT**

# `LiveChatMessageListResponse`

```swift
public struct LiveChatMessageListResponse: Model
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
public var items: [LiveChatMessage]?
```

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessageListResponse".

### `nextPageToken`

```swift
public var nextPageToken: String?
```

### `offlineAt`

```swift
public var offlineAt: DateTime?
```

The date and time when the underlying stream went offline.

### `pageInfo`

```swift
public var pageInfo: PageInfo?
```

General pagination information.

### `pollingIntervalMillis`

```swift
public var pollingIntervalMillis: Int?
```

The amount of time the client should wait before polling again.

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
### `init(etag:eventId:items:kind:nextPageToken:offlineAt:pageInfo:pollingIntervalMillis:tokenPagination:visitorId:)`

```swift
public init(etag: String? = nil, eventId: String? = nil, items: [LiveChatMessage]? = nil, kind: String? = nil, nextPageToken: String? = nil, offlineAt: DateTime? = nil, pageInfo: PageInfo? = nil, pollingIntervalMillis: Int? = nil, tokenPagination: TokenPagination? = nil, visitorId: String? = nil)
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
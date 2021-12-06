**STRUCT**

# `MembershipsLevelListResponse`

```swift
public struct MembershipsLevelListResponse: Model
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
public var items: [MembershipsLevel]?
```

A list of pricing levels offered by a creator to the fans.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#membershipsLevelListResponse".

### `visitorId`

```swift
public var visitorId: String?
```

The visitorId identifies the visitor.

## Methods
### `init(etag:eventId:items:kind:visitorId:)`

```swift
public init(etag: String? = nil, eventId: String? = nil, items: [MembershipsLevel]? = nil, kind: String? = nil, visitorId: String? = nil)
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
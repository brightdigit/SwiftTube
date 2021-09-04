**STRUCT**

# `LiveChatBan`

```swift
public struct LiveChatBan: Model
```

A `__liveChatBan__` resource represents a ban for a YouTube live chat.

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube assigns to uniquely identify the ban.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string `"youtube#liveChatBan"`.

### `snippet`

```swift
public var snippet: LiveChatBanSnippet?
```

The `snippet` object contains basic details about the ban.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveChatBanSnippet? = nil)
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
**STRUCT**

# `SuperChatEvent`

```swift
public struct SuperChatEvent: Model
```

A `__superChatEvent__` resource represents a Super Chat purchase on a YouTube channel.

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

The ID that YouTube assigns to uniquely identify the Super Chat event.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string `"youtube#superChatEvent"`.

### `snippet`

```swift
public var snippet: SuperChatEventSnippet?
```

The `snippet` object contains basic details about the Super Chat event.

## Methods
### `init(etag:id:kind:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: SuperChatEventSnippet? = nil)
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
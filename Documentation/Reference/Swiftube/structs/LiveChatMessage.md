**STRUCT**

# `LiveChatMessage`

```swift
public struct LiveChatMessage: Model
```

A *liveChatMessage* resource represents a chat message in a YouTube Live Chat.

## Properties
### `authorDetails`

```swift
public var authorDetails: LiveChatMessageAuthorDetails?
```

The authorDetails object contains basic details about the user that posted this message.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube assigns to uniquely identify the message.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#liveChatMessage".

### `snippet`

```swift
public var snippet: LiveChatMessageSnippet?
```

The snippet object contains basic details about the message.

## Methods
### `init(authorDetails:etag:id:kind:snippet:)`

```swift
public init(authorDetails: LiveChatMessageAuthorDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: LiveChatMessageSnippet? = nil)
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
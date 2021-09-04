**STRUCT**

# `CommentSnippetAuthorChannelId`

```swift
public struct CommentSnippetAuthorChannelId: Model
```

The id of the author's YouTube channel, if any.

## Properties
### `value`

```swift
public var value: String?
```

## Methods
### `init(value:)`

```swift
public init(value: String? = nil)
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
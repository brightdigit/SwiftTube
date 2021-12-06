**STRUCT**

# `CommentThreadReplies`

```swift
public struct CommentThreadReplies: Model
```

Comments written in (direct or indirect) reply to the top level comment.

## Properties
### `comments`

```swift
public var comments: [Comment]?
```

A limited number of replies. Unless the number of replies returned equals total_reply_count in the snippet the returned replies are only a subset of the total number of replies.

## Methods
### `init(comments:)`

```swift
public init(comments: [Comment]? = nil)
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
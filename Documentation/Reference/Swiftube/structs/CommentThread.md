**STRUCT**

# `CommentThread`

```swift
public struct CommentThread: Model
```

A *comment thread* represents information that applies to a top level comment and all its replies. It can also include the top level comment itself and some of the replies.

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

The ID that YouTube uses to uniquely identify the comment thread.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#commentThread".

### `replies`

```swift
public var replies: CommentThreadReplies?
```

The replies object contains a limited number of replies (if any) to the top level comment found in the snippet.

### `snippet`

```swift
public var snippet: CommentThreadSnippet?
```

The snippet object contains basic details about the comment thread and also the top level comment.

## Methods
### `init(etag:id:kind:replies:snippet:)`

```swift
public init(etag: String? = nil, id: String? = nil, kind: String? = nil, replies: CommentThreadReplies? = nil, snippet: CommentThreadSnippet? = nil)
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
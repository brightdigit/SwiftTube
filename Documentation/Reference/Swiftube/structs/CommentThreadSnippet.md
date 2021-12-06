**STRUCT**

# `CommentThreadSnippet`

```swift
public struct CommentThreadSnippet: Model
```

Basic details about a comment thread.

## Properties
### `canReply`

```swift
public var canReply: Bool?
```

Whether the current viewer of the thread can reply to it. This is viewer specific - other viewers may see a different value for this field.

### `channelId`

```swift
public var channelId: String?
```

The YouTube channel the comments in the thread refer to or the channel with the video the comments refer to. If video_id isn't set the comments refer to the channel itself.

### `isPublic`

```swift
public var isPublic: Bool?
```

Whether the thread (and therefore all its comments) is visible to all YouTube users.

### `topLevelComment`

```swift
public var topLevelComment: Comment?
```

The top level comment of this thread.

### `totalReplyCount`

```swift
public var totalReplyCount: Int?
```

The total number of replies (not including the top level comment).

### `videoId`

```swift
public var videoId: String?
```

The ID of the video the comments refer to, if any. No video_id implies a channel discussion comment.

## Methods
### `init(canReply:channelId:isPublic:topLevelComment:totalReplyCount:videoId:)`

```swift
public init(canReply: Bool? = nil, channelId: String? = nil, isPublic: Bool? = nil, topLevelComment: Comment? = nil, totalReplyCount: Int? = nil, videoId: String? = nil)
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
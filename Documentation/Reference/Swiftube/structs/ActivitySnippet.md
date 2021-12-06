**STRUCT**

# `ActivitySnippet`

```swift
public struct ActivitySnippet: Model
```

Basic details about an activity, including title, description, thumbnails, activity type and group. Next ID: 12

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the channel associated with the activity.

### `channelTitle`

```swift
public var channelTitle: String?
```

Channel title for the channel responsible for this activity

### `description`

```swift
public var description: String?
```

The description of the resource primarily associated with the activity. @mutable youtube.activities.insert

### `groupId`

```swift
public var groupId: String?
```

The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user's activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the video was uploaded.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail.

### `title`

```swift
public var title: String?
```

The title of the resource primarily associated with the activity.

### `type`

```swift
public var type: `Type`?
```

The type of activity that the resource describes.

## Methods
### `init(channelId:channelTitle:description:groupId:publishedAt:thumbnails:title:type:)`

```swift
public init(channelId: String? = nil, channelTitle: String? = nil, description: String? = nil, groupId: String? = nil, publishedAt: DateTime? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil, type: Type? = nil)
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
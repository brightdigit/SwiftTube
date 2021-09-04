**STRUCT**

# `VideoCategorySnippet`

```swift
public struct VideoCategorySnippet: Model
```

Basic details about a video category, such as its localized title.

## Properties
### `assignable`

```swift
public var assignable: Bool?
```

### `channelId`

```swift
public var channelId: String?
```

The YouTube channel that created the video category.

### `title`

```swift
public var title: String?
```

The video category's title.

## Methods
### `init(assignable:channelId:title:)`

```swift
public init(assignable: Bool? = nil, channelId: String? = nil, title: String? = nil)
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
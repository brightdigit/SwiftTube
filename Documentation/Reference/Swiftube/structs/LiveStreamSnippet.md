**STRUCT**

# `LiveStreamSnippet`

```swift
public struct LiveStreamSnippet: Model
```

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the channel that is transmitting the stream.

### `description`

```swift
public var description: String?
```

The stream's description. The value cannot be longer than 10000 characters.

### `isDefaultStream`

```swift
public var isDefaultStream: Bool?
```

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the stream was created.

### `title`

```swift
public var title: String?
```

The stream's title. The value must be between 1 and 128 characters long.

## Methods
### `init(channelId:description:isDefaultStream:publishedAt:title:)`

```swift
public init(channelId: String? = nil, description: String? = nil, isDefaultStream: Bool? = nil, publishedAt: DateTime? = nil, title: String? = nil)
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
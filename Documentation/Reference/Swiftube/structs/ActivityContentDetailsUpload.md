**STRUCT**

# `ActivityContentDetailsUpload`

```swift
public struct ActivityContentDetailsUpload: Model
```

Information about the uploaded video.

## Properties
### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify the uploaded video.

## Methods
### `init(videoId:)`

```swift
public init(videoId: String? = nil)
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
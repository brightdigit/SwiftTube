**STRUCT**

# `InvideoPosition`

```swift
public struct InvideoPosition: Model
```

Describes the spatial position of a visual widget inside a video. It is a union of various position types, out of which only will be set one.

## Properties
### `cornerPosition`

```swift
public var cornerPosition: CornerPosition?
```

Describes in which corner of the video the visual widget will appear.

### `type`

```swift
public var type: `Type`?
```

Defines the position type.

## Methods
### `init(cornerPosition:type:)`

```swift
public init(cornerPosition: CornerPosition? = nil, type: Type? = nil)
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
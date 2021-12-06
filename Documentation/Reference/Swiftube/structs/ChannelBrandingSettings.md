**STRUCT**

# `ChannelBrandingSettings`

```swift
public struct ChannelBrandingSettings: Model
```

Branding properties of a YouTube channel.

## Properties
### `channel`

```swift
public var channel: ChannelSettings?
```

Branding properties for the channel view.

### `hints`

```swift
public var hints: [PropertyValue]?
```

Additional experimental branding properties.

### `image`

```swift
public var image: ImageSettings?
```

Branding properties for branding images.

### `watch`

```swift
public var watch: WatchSettings?
```

Branding properties for the watch page.

## Methods
### `init(channel:hints:image:watch:)`

```swift
public init(channel: ChannelSettings? = nil, hints: [PropertyValue]? = nil, image: ImageSettings? = nil, watch: WatchSettings? = nil)
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
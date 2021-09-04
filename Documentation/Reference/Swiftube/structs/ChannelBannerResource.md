**STRUCT**

# `ChannelBannerResource`

```swift
public struct ChannelBannerResource: Model
```

A channel banner returned as the response to a channel_banner.insert call.

## Properties
### `etag`

```swift
public var etag: String?
```

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#channelBannerResource".

### `url`

```swift
public var url: String?
```

The URL of this banner image.

## Methods
### `init(etag:kind:url:)`

```swift
public init(etag: String? = nil, kind: String? = nil, url: String? = nil)
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
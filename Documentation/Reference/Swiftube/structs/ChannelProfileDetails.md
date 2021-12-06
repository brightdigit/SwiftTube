**STRUCT**

# `ChannelProfileDetails`

```swift
public struct ChannelProfileDetails: Model
```

## Properties
### `channelId`

```swift
public var channelId: String?
```

The YouTube channel ID.

### `channelUrl`

```swift
public var channelUrl: String?
```

The channel's URL.

### `displayName`

```swift
public var displayName: String?
```

The channel's display name.

### `profileImageUrl`

```swift
public var profileImageUrl: String?
```

The channels's avatar URL.

## Methods
### `init(channelId:channelUrl:displayName:profileImageUrl:)`

```swift
public init(channelId: String? = nil, channelUrl: String? = nil, displayName: String? = nil, profileImageUrl: String? = nil)
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
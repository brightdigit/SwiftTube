**STRUCT**

# `PlaylistItemStatus`

```swift
public struct PlaylistItemStatus: Model
```

Information about the playlist item's privacy status.

## Properties
### `privacyStatus`

```swift
public var privacyStatus: PrivacyStatus?
```

This resource's privacy status.

## Methods
### `init(privacyStatus:)`

```swift
public init(privacyStatus: PrivacyStatus? = nil)
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
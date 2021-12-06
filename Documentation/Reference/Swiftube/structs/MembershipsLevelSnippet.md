**STRUCT**

# `MembershipsLevelSnippet`

```swift
public struct MembershipsLevelSnippet: Model
```

## Properties
### `creatorChannelId`

```swift
public var creatorChannelId: String?
```

The id of the channel that's offering channel memberships.

### `levelDetails`

```swift
public var levelDetails: LevelDetails?
```

Details about the pricing level.

## Methods
### `init(creatorChannelId:levelDetails:)`

```swift
public init(creatorChannelId: String? = nil, levelDetails: LevelDetails? = nil)
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
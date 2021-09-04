**STRUCT**

# `ChannelAuditDetails`

```swift
public struct ChannelAuditDetails: Model
```

The auditDetails object encapsulates channel data that is relevant for YouTube Partners during the audit process.

## Properties
### `communityGuidelinesGoodStanding`

```swift
public var communityGuidelinesGoodStanding: Bool?
```

Whether or not the channel respects the community guidelines.

### `contentIdClaimsGoodStanding`

```swift
public var contentIdClaimsGoodStanding: Bool?
```

Whether or not the channel has any unresolved claims.

### `copyrightStrikesGoodStanding`

```swift
public var copyrightStrikesGoodStanding: Bool?
```

Whether or not the channel has any copyright strikes.

## Methods
### `init(communityGuidelinesGoodStanding:contentIdClaimsGoodStanding:copyrightStrikesGoodStanding:)`

```swift
public init(communityGuidelinesGoodStanding: Bool? = nil, contentIdClaimsGoodStanding: Bool? = nil, copyrightStrikesGoodStanding: Bool? = nil)
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
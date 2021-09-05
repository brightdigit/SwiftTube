**STRUCT**

# `MemberSnippet`

```swift
public struct MemberSnippet: Model
```

## Properties
### `creatorChannelId`

```swift
public var creatorChannelId: String?
```

The id of the channel that's offering memberships.

### `memberDetails`

```swift
public var memberDetails: ChannelProfileDetails?
```

Details about the member.

### `membershipsDetails`

```swift
public var membershipsDetails: MembershipsDetails?
```

Details about the user's membership.

## Methods
### `init(creatorChannelId:memberDetails:membershipsDetails:)`

```swift
public init(creatorChannelId: String? = nil, memberDetails: ChannelProfileDetails? = nil, membershipsDetails: MembershipsDetails? = nil)
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
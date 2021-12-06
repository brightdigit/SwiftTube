**STRUCT**

# `ChannelStatus`

```swift
public struct ChannelStatus: Model
```

JSON template for the status part of a channel.

## Properties
### `isLinked`

```swift
public var isLinked: Bool?
```

If true, then the user is linked to either a YouTube username or G+ account. Otherwise, the user doesn't have a public YouTube identity.

### `longUploadsStatus`

```swift
public var longUploadsStatus: LongUploadsStatus?
```

The long uploads status of this channel. See https://support.google.com/youtube/answer/71673 for more information.

### `madeForKids`

```swift
public var madeForKids: Bool?
```

### `privacyStatus`

```swift
public var privacyStatus: PrivacyStatus?
```

Privacy status of the channel.

### `selfDeclaredMadeForKids`

```swift
public var selfDeclaredMadeForKids: Bool?
```

## Methods
### `init(isLinked:longUploadsStatus:madeForKids:privacyStatus:selfDeclaredMadeForKids:)`

```swift
public init(isLinked: Bool? = nil, longUploadsStatus: LongUploadsStatus? = nil, madeForKids: Bool? = nil, privacyStatus: PrivacyStatus? = nil, selfDeclaredMadeForKids: Bool? = nil)
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
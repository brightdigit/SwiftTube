**STRUCT**

# `ThirdPartyLinkSnippet`

```swift
public struct ThirdPartyLinkSnippet: Model
```

Basic information about a third party account link, including its type and type-specific information.

## Properties
### `channelToStoreLink`

```swift
public var channelToStoreLink: ChannelToStoreLinkDetails?
```

Information specific to a link between a channel and a store on a merchandising platform.

### `type`

```swift
public var type: `Type`?
```

Type of the link named after the entities that are being linked.

## Methods
### `init(channelToStoreLink:type:)`

```swift
public init(channelToStoreLink: ChannelToStoreLinkDetails? = nil, type: Type? = nil)
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
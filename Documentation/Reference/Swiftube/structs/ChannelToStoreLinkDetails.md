**STRUCT**

# `ChannelToStoreLinkDetails`

```swift
public struct ChannelToStoreLinkDetails: Model
```

Information specific to a store on a merchandising platform linked to a YouTube channel.

## Properties
### `storeName`

```swift
public var storeName: String?
```

Name of the store.

### `storeUrl`

```swift
public var storeUrl: String?
```

Landing page of the store.

## Methods
### `init(storeName:storeUrl:)`

```swift
public init(storeName: String? = nil, storeUrl: String? = nil)
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
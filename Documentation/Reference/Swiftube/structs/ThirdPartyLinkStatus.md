**STRUCT**

# `ThirdPartyLinkStatus`

```swift
public struct ThirdPartyLinkStatus: Model
```

The third-party link status object contains information about the status of the link.

## Properties
### `linkStatus`

```swift
public var linkStatus: LinkStatus?
```

## Methods
### `init(linkStatus:)`

```swift
public init(linkStatus: LinkStatus? = nil)
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
**STRUCT**

# `VideoMonetizationDetails`

```swift
public struct VideoMonetizationDetails: Model
```

Details about monetization of a YouTube Video.

## Properties
### `access`

```swift
public var access: AccessPolicy?
```

The value of access indicates whether the video can be monetized or not.

## Methods
### `init(access:)`

```swift
public init(access: AccessPolicy? = nil)
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
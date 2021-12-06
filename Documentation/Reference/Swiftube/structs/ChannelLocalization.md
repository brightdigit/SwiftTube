**STRUCT**

# `ChannelLocalization`

```swift
public struct ChannelLocalization: Model
```

Channel localization setting

## Properties
### `description`

```swift
public var description: String?
```

The localized strings for channel's description.

### `title`

```swift
public var title: String?
```

The localized strings for channel's title.

## Methods
### `init(description:title:)`

```swift
public init(description: String? = nil, title: String? = nil)
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
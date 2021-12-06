**STRUCT**

# `ChannelSectionLocalization`

```swift
public struct ChannelSectionLocalization: Model
```

ChannelSection localization setting

## Properties
### `title`

```swift
public var title: String?
```

The localized strings for channel section's title.

## Methods
### `init(title:)`

```swift
public init(title: String? = nil)
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
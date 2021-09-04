**STRUCT**

# `ChannelSectionTargeting`

```swift
public struct ChannelSectionTargeting: Model
```

ChannelSection targeting setting.

## Properties
### `countries`

```swift
public var countries: [String]?
```

The country the channel section is targeting.

### `languages`

```swift
public var languages: [String]?
```

The language the channel section is targeting.

### `regions`

```swift
public var regions: [String]?
```

The region the channel section is targeting.

## Methods
### `init(countries:languages:regions:)`

```swift
public init(countries: [String]? = nil, languages: [String]? = nil, regions: [String]? = nil)
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
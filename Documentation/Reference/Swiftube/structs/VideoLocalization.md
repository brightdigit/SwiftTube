**STRUCT**

# `VideoLocalization`

```swift
public struct VideoLocalization: Model
```

Localized versions of certain video properties (e.g. title).

## Properties
### `description`

```swift
public var description: String?
```

Localized version of the video's description.

### `title`

```swift
public var title: String?
```

Localized version of the video's title.

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
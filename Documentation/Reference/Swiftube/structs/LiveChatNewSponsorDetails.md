**STRUCT**

# `LiveChatNewSponsorDetails`

```swift
public struct LiveChatNewSponsorDetails: Model
```

## Properties
### `isUpgrade`

```swift
public var isUpgrade: Bool?
```

If the viewer just had upgraded from a lower level. For viewers that were not members at the time of purchase, this field is false.

### `memberLevelName`

```swift
public var memberLevelName: String?
```

The name of the Level that the viewer just had joined. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.

## Methods
### `init(isUpgrade:memberLevelName:)`

```swift
public init(isUpgrade: Bool? = nil, memberLevelName: String? = nil)
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
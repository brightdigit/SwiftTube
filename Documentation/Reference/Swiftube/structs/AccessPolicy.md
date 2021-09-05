**STRUCT**

# `AccessPolicy`

```swift
public struct AccessPolicy: Model
```

Rights management policy for YouTube resources.

## Properties
### `allowed`

```swift
public var allowed: Bool?
```

The value of allowed indicates whether the access to the policy is allowed or denied by default.

### `exception`

```swift
public var exception: [String]?
```

A list of region codes that identify countries where the default policy do not apply.

## Methods
### `init(allowed:exception:)`

```swift
public init(allowed: Bool? = nil, exception: [String]? = nil)
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
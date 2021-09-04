**STRUCT**

# `MembershipsDurationAtLevel`

```swift
public struct MembershipsDurationAtLevel: Model
```

## Properties
### `level`

```swift
public var level: String?
```

Pricing level ID.

### `memberSince`

```swift
public var memberSince: String?
```

The date and time when the user became a continuous member for the given level.

### `memberTotalDurationMonths`

```swift
public var memberTotalDurationMonths: Int?
```

The cumulative time the user has been a member for the given level in complete months (the time is rounded down to the nearest integer).

## Methods
### `init(level:memberSince:memberTotalDurationMonths:)`

```swift
public init(level: String? = nil, memberSince: String? = nil, memberTotalDurationMonths: Int? = nil)
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
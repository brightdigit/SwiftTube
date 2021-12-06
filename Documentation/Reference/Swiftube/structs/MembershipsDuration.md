**STRUCT**

# `MembershipsDuration`

```swift
public struct MembershipsDuration: Model
```

## Properties
### `memberSince`

```swift
public var memberSince: String?
```

The date and time when the user became a continuous member across all levels.

### `memberTotalDurationMonths`

```swift
public var memberTotalDurationMonths: Int?
```

The cumulative time the user has been a member across all levels in complete months (the time is rounded down to the nearest integer).

## Methods
### `init(memberSince:memberTotalDurationMonths:)`

```swift
public init(memberSince: String? = nil, memberTotalDurationMonths: Int? = nil)
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
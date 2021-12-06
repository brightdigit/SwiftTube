**STRUCT**

# `MembershipsDetails`

```swift
public struct MembershipsDetails: Model
```

## Properties
### `accessibleLevels`

```swift
public var accessibleLevels: [String]?
```

Ids of all levels that the user has access to. This includes the currently active level and all other levels that are included because of a higher purchase.

### `highestAccessibleLevel`

```swift
public var highestAccessibleLevel: String?
```

Id of the highest level that the user has access to at the moment.

### `highestAccessibleLevelDisplayName`

```swift
public var highestAccessibleLevelDisplayName: String?
```

Display name for the highest level that the user has access to at the moment.

### `membershipsDuration`

```swift
public var membershipsDuration: MembershipsDuration?
```

Data about memberships duration without taking into consideration pricing levels.

### `membershipsDurationAtLevels`

```swift
public var membershipsDurationAtLevels: [MembershipsDurationAtLevel]?
```

Data about memberships duration on particular pricing levels.

## Methods
### `init(accessibleLevels:highestAccessibleLevel:highestAccessibleLevelDisplayName:membershipsDuration:membershipsDurationAtLevels:)`

```swift
public init(accessibleLevels: [String]? = nil, highestAccessibleLevel: String? = nil, highestAccessibleLevelDisplayName: String? = nil, membershipsDuration: MembershipsDuration? = nil, membershipsDurationAtLevels: [MembershipsDurationAtLevel]? = nil)
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
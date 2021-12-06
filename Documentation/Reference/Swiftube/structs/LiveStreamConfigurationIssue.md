**STRUCT**

# `LiveStreamConfigurationIssue`

```swift
public struct LiveStreamConfigurationIssue: Model
```

## Properties
### `description`

```swift
public var description: String?
```

The long-form description of the issue and how to resolve it.

### `reason`

```swift
public var reason: String?
```

The short-form reason for this issue.

### `severity`

```swift
public var severity: Severity?
```

How severe this issue is to the stream.

### `type`

```swift
public var type: `Type`?
```

The kind of error happening.

## Methods
### `init(description:reason:severity:type:)`

```swift
public init(description: String? = nil, reason: String? = nil, severity: Severity? = nil, type: Type? = nil)
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
**STRUCT**

# `Member`

```swift
public struct Member: Model
```

A *member* resource represents a member for a YouTube channel. A member provides recurring monetary support to a creator and receives special benefits.

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#member".

### `snippet`

```swift
public var snippet: MemberSnippet?
```

The snippet object contains basic details about the member.

## Methods
### `init(etag:kind:snippet:)`

```swift
public init(etag: String? = nil, kind: String? = nil, snippet: MemberSnippet? = nil)
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
**STRUCT**

# `ActivityContentDetailsSocial`

```swift
public struct ActivityContentDetailsSocial: Model
```

Details about a social network post.

## Properties
### `author`

```swift
public var author: String?
```

The author of the social network post.

### `imageUrl`

```swift
public var imageUrl: String?
```

An image of the post's author.

### `referenceUrl`

```swift
public var referenceUrl: String?
```

The URL of the social network post.

### `resourceId`

```swift
public var resourceId: ResourceId?
```

The resourceId object encapsulates information that identifies the resource associated with a social network post.

### `type`

```swift
public var type: `Type`?
```

The name of the social network.

## Methods
### `init(author:imageUrl:referenceUrl:resourceId:type:)`

```swift
public init(author: String? = nil, imageUrl: String? = nil, referenceUrl: String? = nil, resourceId: ResourceId? = nil, type: Type? = nil)
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
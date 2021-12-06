**STRUCT**

# `ThirdPartyLink`

```swift
public struct ThirdPartyLink: Model
```

A *third party account link* resource represents a link between a YouTube account or a channel and an account on a third-party service.

## Properties
### `etag`

```swift
public var etag: String?
```

Etag of this resource

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#thirdPartyLink".

### `linkingToken`

```swift
public var linkingToken: String?
```

The linking_token identifies a YouTube account and channel with which the third party account is linked.

### `snippet`

```swift
public var snippet: ThirdPartyLinkSnippet?
```

The snippet object contains basic details about the third- party account link.

### `status`

```swift
public var status: ThirdPartyLinkStatus?
```

The status object contains information about the status of the link.

## Methods
### `init(etag:kind:linkingToken:snippet:status:)`

```swift
public init(etag: String? = nil, kind: String? = nil, linkingToken: String? = nil, snippet: ThirdPartyLinkSnippet? = nil, status: ThirdPartyLinkStatus? = nil)
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
**STRUCT**

# `ChannelSection`

```swift
public struct ChannelSection: Model
```

## Properties
### `contentDetails`

```swift
public var contentDetails: ChannelSectionContentDetails?
```

The contentDetails object contains details about the channel section content, such as a list of playlists or channels featured in the section.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the channel section.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#channelSection".

### `localizations`

```swift
public var localizations: [String: ChannelSectionLocalization]?
```

Localizations for different languages

### `snippet`

```swift
public var snippet: ChannelSectionSnippet?
```

The snippet object contains basic details about the channel section, such as its type, style and title.

### `targeting`

```swift
public var targeting: ChannelSectionTargeting?
```

The targeting object contains basic targeting settings about the channel section.

## Methods
### `init(contentDetails:etag:id:kind:localizations:snippet:targeting:)`

```swift
public init(contentDetails: ChannelSectionContentDetails? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, localizations: [String: ChannelSectionLocalization]? = nil, snippet: ChannelSectionSnippet? = nil, targeting: ChannelSectionTargeting? = nil)
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
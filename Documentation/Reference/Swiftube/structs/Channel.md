**STRUCT**

# `Channel`

```swift
public struct Channel: Model
```

A *channel* resource contains information about a YouTube channel.

## Properties
### `auditDetails`

```swift
public var auditDetails: ChannelAuditDetails?
```

The auditionDetails object encapsulates channel data that is relevant for YouTube Partners during the audition process.

### `brandingSettings`

```swift
public var brandingSettings: ChannelBrandingSettings?
```

The brandingSettings object encapsulates information about the branding of the channel.

### `contentDetails`

```swift
public var contentDetails: ChannelContentDetails?
```

The contentDetails object encapsulates information about the channel's content.

### `contentOwnerDetails`

```swift
public var contentOwnerDetails: ChannelContentOwnerDetails?
```

The contentOwnerDetails object encapsulates channel data that is relevant for YouTube Partners linked with the channel.

### `conversionPings`

```swift
public var conversionPings: ChannelConversionPings?
```

The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.

### `etag`

```swift
public var etag: String?
```

Etag of this resource.

### `id`

```swift
public var id: String?
```

The ID that YouTube uses to uniquely identify the channel.

### `kind`

```swift
public var kind: String?
```

Identifies what kind of resource this is. Value: the fixed string "youtube#channel".

### `localizations`

```swift
public var localizations: [String: ChannelLocalization]?
```

Localizations for different languages

### `snippet`

```swift
public var snippet: ChannelSnippet?
```

The snippet object contains basic details about the channel, such as its title, description, and thumbnail images.

### `statistics`

```swift
public var statistics: ChannelStatistics?
```

The statistics object encapsulates statistics for the channel.

### `status`

```swift
public var status: ChannelStatus?
```

The status object encapsulates information about the privacy status of the channel.

### `topicDetails`

```swift
public var topicDetails: ChannelTopicDetails?
```

The topicDetails object encapsulates information about Freebase topics associated with the channel.

## Methods
### `init(auditDetails:brandingSettings:contentDetails:contentOwnerDetails:conversionPings:etag:id:kind:localizations:snippet:statistics:status:topicDetails:)`

```swift
public init(auditDetails: ChannelAuditDetails? = nil, brandingSettings: ChannelBrandingSettings? = nil, contentDetails: ChannelContentDetails? = nil, contentOwnerDetails: ChannelContentOwnerDetails? = nil, conversionPings: ChannelConversionPings? = nil, etag: String? = nil, id: String? = nil, kind: String? = nil, localizations: [String: ChannelLocalization]? = nil, snippet: ChannelSnippet? = nil, statistics: ChannelStatistics? = nil, status: ChannelStatus? = nil, topicDetails: ChannelTopicDetails? = nil)
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
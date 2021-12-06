**STRUCT**

# `ChannelSettings`

```swift
public struct ChannelSettings: Model
```

Branding properties for the channel view.

## Properties
### `country`

```swift
public var country: String?
```

The country of the channel.

### `defaultLanguage`

```swift
public var defaultLanguage: String?
```

### `defaultTab`

```swift
public var defaultTab: String?
```

Which content tab users should see when viewing the channel.

### `description`

```swift
public var description: String?
```

Specifies the channel description.

### `featuredChannelsTitle`

```swift
public var featuredChannelsTitle: String?
```

Title for the featured channels tab.

### `featuredChannelsUrls`

```swift
public var featuredChannelsUrls: [String]?
```

The list of featured channels.

### `keywords`

```swift
public var keywords: String?
```

Lists keywords associated with the channel, comma-separated.

### `moderateComments`

```swift
public var moderateComments: Bool?
```

Whether user-submitted comments left on the channel page need to be approved by the channel owner to be publicly visible.

### `profileColor`

```swift
public var profileColor: String?
```

A prominent color that can be rendered on this channel page.

### `showBrowseView`

```swift
public var showBrowseView: Bool?
```

Whether the tab to browse the videos should be displayed.

### `showRelatedChannels`

```swift
public var showRelatedChannels: Bool?
```

Whether related channels should be proposed.

### `title`

```swift
public var title: String?
```

Specifies the channel title.

### `trackingAnalyticsAccountId`

```swift
public var trackingAnalyticsAccountId: String?
```

The ID for a Google Analytics account to track and measure traffic to the channels.

### `unsubscribedTrailer`

```swift
public var unsubscribedTrailer: String?
```

The trailer of the channel, for users that are not subscribers.

## Methods
### `init(country:defaultLanguage:defaultTab:description:featuredChannelsTitle:featuredChannelsUrls:keywords:moderateComments:profileColor:showBrowseView:showRelatedChannels:title:trackingAnalyticsAccountId:unsubscribedTrailer:)`

```swift
public init(country: String? = nil, defaultLanguage: String? = nil, defaultTab: String? = nil, description: String? = nil, featuredChannelsTitle: String? = nil, featuredChannelsUrls: [String]? = nil, keywords: String? = nil, moderateComments: Bool? = nil, profileColor: String? = nil, showBrowseView: Bool? = nil, showRelatedChannels: Bool? = nil, title: String? = nil, trackingAnalyticsAccountId: String? = nil, unsubscribedTrailer: String? = nil)
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
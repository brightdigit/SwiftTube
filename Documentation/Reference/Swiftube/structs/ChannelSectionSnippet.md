**STRUCT**

# `ChannelSectionSnippet`

```swift
public struct ChannelSectionSnippet: Model
```

Basic details about a channel section, including title, style and position.

## Properties
### `channelId`

```swift
public var channelId: String?
```

The ID that YouTube uses to uniquely identify the channel that published the channel section.

### `defaultLanguage`

```swift
public var defaultLanguage: String?
```

The language of the channel section's default title and description.

### `localized`

```swift
public var localized: ChannelSectionLocalization?
```

Localized title, read-only.

### `position`

```swift
public var position: Int?
```

The position of the channel section in the channel.

### `style`

```swift
public var style: Style?
```

The style of the channel section.

### `title`

```swift
public var title: String?
```

The channel section's title for multiple_playlists and multiple_channels.

### `type`

```swift
public var type: `Type`?
```

The type of the channel section.

## Methods
### `init(channelId:defaultLanguage:localized:position:style:title:type:)`

```swift
public init(channelId: String? = nil, defaultLanguage: String? = nil, localized: ChannelSectionLocalization? = nil, position: Int? = nil, style: Style? = nil, title: String? = nil, type: Type? = nil)
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
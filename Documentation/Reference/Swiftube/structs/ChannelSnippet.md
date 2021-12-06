**STRUCT**

# `ChannelSnippet`

```swift
public struct ChannelSnippet: Model
```

Basic details about a channel, including title, description and thumbnails.

## Properties
### `country`

```swift
public var country: String?
```

The country of the channel.

### `customUrl`

```swift
public var customUrl: String?
```

The custom url of the channel.

### `defaultLanguage`

```swift
public var defaultLanguage: String?
```

The language of the channel's default title and description.

### `description`

```swift
public var description: String?
```

The description of the channel.

### `localized`

```swift
public var localized: ChannelLocalization?
```

Localized title and description, read-only.

### `publishedAt`

```swift
public var publishedAt: DateTime?
```

The date and time that the channel was created.

### `thumbnails`

```swift
public var thumbnails: ThumbnailDetails?
```

A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. When displaying thumbnails in your application, make sure that your code uses the image URLs exactly as they are returned in API responses. For example, your application should not use the http domain instead of the https domain in a URL returned in an API response. Beginning in July 2018, channel thumbnail URLs will only be available in the https domain, which is how the URLs appear in API responses. After that time, you might see broken images in your application if it tries to load YouTube images from the http domain. Thumbnail images might be empty for newly created channels and might take up to one day to populate.

### `title`

```swift
public var title: String?
```

The channel's title.

## Methods
### `init(country:customUrl:defaultLanguage:description:localized:publishedAt:thumbnails:title:)`

```swift
public init(country: String? = nil, customUrl: String? = nil, defaultLanguage: String? = nil, description: String? = nil, localized: ChannelLocalization? = nil, publishedAt: DateTime? = nil, thumbnails: ThumbnailDetails? = nil, title: String? = nil)
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
**STRUCT**

# `ActivityContentDetailsPromotedItem`

```swift
public struct ActivityContentDetailsPromotedItem: Model
```

Details about a resource which is being promoted.

## Properties
### `adTag`

```swift
public var adTag: String?
```

The URL the client should fetch to request a promoted item.

### `clickTrackingUrl`

```swift
public var clickTrackingUrl: String?
```

The URL the client should ping to indicate that the user clicked through on this promoted item.

### `creativeViewUrl`

```swift
public var creativeViewUrl: String?
```

The URL the client should ping to indicate that the user was shown this promoted item.

### `ctaType`

```swift
public var ctaType: CtaType?
```

The type of call-to-action, a message to the user indicating action that can be taken.

### `customCtaButtonText`

```swift
public var customCtaButtonText: String?
```

The custom call-to-action button text. If specified, it will override the default button text for the cta_type.

### `descriptionText`

```swift
public var descriptionText: String?
```

The text description to accompany the promoted item.

### `destinationUrl`

```swift
public var destinationUrl: String?
```

The URL the client should direct the user to, if the user chooses to visit the advertiser's website.

### `forecastingUrl`

```swift
public var forecastingUrl: [String]?
```

The list of forecasting URLs. The client should ping all of these URLs when a promoted item is not available, to indicate that a promoted item could have been shown.

### `impressionUrl`

```swift
public var impressionUrl: [String]?
```

The list of impression URLs. The client should ping all of these URLs to indicate that the user was shown this promoted item.

### `videoId`

```swift
public var videoId: String?
```

The ID that YouTube uses to uniquely identify the promoted video.

## Methods
### `init(adTag:clickTrackingUrl:creativeViewUrl:ctaType:customCtaButtonText:descriptionText:destinationUrl:forecastingUrl:impressionUrl:videoId:)`

```swift
public init(adTag: String? = nil, clickTrackingUrl: String? = nil, creativeViewUrl: String? = nil, ctaType: CtaType? = nil, customCtaButtonText: String? = nil, descriptionText: String? = nil, destinationUrl: String? = nil, forecastingUrl: [String]? = nil, impressionUrl: [String]? = nil, videoId: String? = nil)
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
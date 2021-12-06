**STRUCT**

# `ImageSettings`

```swift
public struct ImageSettings: Model
```

Branding properties for images associated with the channel.

## Properties
### `backgroundImageUrl`

```swift
public var backgroundImageUrl: LocalizedProperty?
```

The URL for the background image shown on the video watch page. The image should be 1200px by 615px, with a maximum file size of 128k.

### `bannerExternalUrl`

```swift
public var bannerExternalUrl: String?
```

This is generated when a ChannelBanner.Insert request has succeeded for the given channel.

### `bannerImageUrl`

```swift
public var bannerImageUrl: String?
```

Banner image. Desktop size (1060x175).

### `bannerMobileExtraHdImageUrl`

```swift
public var bannerMobileExtraHdImageUrl: String?
```

Banner image. Mobile size high resolution (1440x395).

### `bannerMobileHdImageUrl`

```swift
public var bannerMobileHdImageUrl: String?
```

Banner image. Mobile size high resolution (1280x360).

### `bannerMobileImageUrl`

```swift
public var bannerMobileImageUrl: String?
```

Banner image. Mobile size (640x175).

### `bannerMobileLowImageUrl`

```swift
public var bannerMobileLowImageUrl: String?
```

Banner image. Mobile size low resolution (320x88).

### `bannerMobileMediumHdImageUrl`

```swift
public var bannerMobileMediumHdImageUrl: String?
```

Banner image. Mobile size medium/high resolution (960x263).

### `bannerTabletExtraHdImageUrl`

```swift
public var bannerTabletExtraHdImageUrl: String?
```

Banner image. Tablet size extra high resolution (2560x424).

### `bannerTabletHdImageUrl`

```swift
public var bannerTabletHdImageUrl: String?
```

Banner image. Tablet size high resolution (2276x377).

### `bannerTabletImageUrl`

```swift
public var bannerTabletImageUrl: String?
```

Banner image. Tablet size (1707x283).

### `bannerTabletLowImageUrl`

```swift
public var bannerTabletLowImageUrl: String?
```

Banner image. Tablet size low resolution (1138x188).

### `bannerTvHighImageUrl`

```swift
public var bannerTvHighImageUrl: String?
```

Banner image. TV size high resolution (1920x1080).

### `bannerTvImageUrl`

```swift
public var bannerTvImageUrl: String?
```

Banner image. TV size extra high resolution (2120x1192).

### `bannerTvLowImageUrl`

```swift
public var bannerTvLowImageUrl: String?
```

Banner image. TV size low resolution (854x480).

### `bannerTvMediumImageUrl`

```swift
public var bannerTvMediumImageUrl: String?
```

Banner image. TV size medium resolution (1280x720).

### `largeBrandedBannerImageImapScript`

```swift
public var largeBrandedBannerImageImapScript: LocalizedProperty?
```

The image map script for the large banner image.

### `largeBrandedBannerImageUrl`

```swift
public var largeBrandedBannerImageUrl: LocalizedProperty?
```

The URL for the 854px by 70px image that appears below the video player in the expanded video view of the video watch page.

### `smallBrandedBannerImageImapScript`

```swift
public var smallBrandedBannerImageImapScript: LocalizedProperty?
```

The image map script for the small banner image.

### `smallBrandedBannerImageUrl`

```swift
public var smallBrandedBannerImageUrl: LocalizedProperty?
```

The URL for the 640px by 70px banner image that appears below the video player in the default view of the video watch page. The URL for the image that appears above the top-left corner of the video player. This is a 25-pixel-high image with a flexible width that cannot exceed 170 pixels.

### `trackingImageUrl`

```swift
public var trackingImageUrl: String?
```

The URL for a 1px by 1px tracking pixel that can be used to collect statistics for views of the channel or video pages.

### `watchIconImageUrl`

```swift
public var watchIconImageUrl: String?
```

## Methods
### `init(backgroundImageUrl:bannerExternalUrl:bannerImageUrl:bannerMobileExtraHdImageUrl:bannerMobileHdImageUrl:bannerMobileImageUrl:bannerMobileLowImageUrl:bannerMobileMediumHdImageUrl:bannerTabletExtraHdImageUrl:bannerTabletHdImageUrl:bannerTabletImageUrl:bannerTabletLowImageUrl:bannerTvHighImageUrl:bannerTvImageUrl:bannerTvLowImageUrl:bannerTvMediumImageUrl:largeBrandedBannerImageImapScript:largeBrandedBannerImageUrl:smallBrandedBannerImageImapScript:smallBrandedBannerImageUrl:trackingImageUrl:watchIconImageUrl:)`

```swift
public init(backgroundImageUrl: LocalizedProperty? = nil, bannerExternalUrl: String? = nil, bannerImageUrl: String? = nil, bannerMobileExtraHdImageUrl: String? = nil, bannerMobileHdImageUrl: String? = nil, bannerMobileImageUrl: String? = nil, bannerMobileLowImageUrl: String? = nil, bannerMobileMediumHdImageUrl: String? = nil, bannerTabletExtraHdImageUrl: String? = nil, bannerTabletHdImageUrl: String? = nil, bannerTabletImageUrl: String? = nil, bannerTabletLowImageUrl: String? = nil, bannerTvHighImageUrl: String? = nil, bannerTvImageUrl: String? = nil, bannerTvLowImageUrl: String? = nil, bannerTvMediumImageUrl: String? = nil, largeBrandedBannerImageImapScript: LocalizedProperty? = nil, largeBrandedBannerImageUrl: LocalizedProperty? = nil, smallBrandedBannerImageImapScript: LocalizedProperty? = nil, smallBrandedBannerImageUrl: LocalizedProperty? = nil, trackingImageUrl: String? = nil, watchIconImageUrl: String? = nil)
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
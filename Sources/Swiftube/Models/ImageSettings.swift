import Foundation
import Prch

/** Branding properties for images associated with the channel. */
public struct ImageSettings: Model {
  /** The URL for the background image shown on the video watch page. The image should be 1200px by 615px, with a maximum file size of 128k. */
  public var backgroundImageUrl: LocalizedProperty?

  /** This is generated when a ChannelBanner.Insert request has succeeded for the given channel. */
  public var bannerExternalUrl: String?

  /** Banner image. Desktop size (1060x175). */
  public var bannerImageUrl: String?

  /** Banner image. Mobile size high resolution (1440x395). */
  public var bannerMobileExtraHdImageUrl: String?

  /** Banner image. Mobile size high resolution (1280x360). */
  public var bannerMobileHdImageUrl: String?

  /** Banner image. Mobile size (640x175). */
  public var bannerMobileImageUrl: String?

  /** Banner image. Mobile size low resolution (320x88). */
  public var bannerMobileLowImageUrl: String?

  /** Banner image. Mobile size medium/high resolution (960x263). */
  public var bannerMobileMediumHdImageUrl: String?

  /** Banner image. Tablet size extra high resolution (2560x424). */
  public var bannerTabletExtraHdImageUrl: String?

  /** Banner image. Tablet size high resolution (2276x377). */
  public var bannerTabletHdImageUrl: String?

  /** Banner image. Tablet size (1707x283). */
  public var bannerTabletImageUrl: String?

  /** Banner image. Tablet size low resolution (1138x188). */
  public var bannerTabletLowImageUrl: String?

  /** Banner image. TV size high resolution (1920x1080). */
  public var bannerTvHighImageUrl: String?

  /** Banner image. TV size extra high resolution (2120x1192). */
  public var bannerTvImageUrl: String?

  /** Banner image. TV size low resolution (854x480). */
  public var bannerTvLowImageUrl: String?

  /** Banner image. TV size medium resolution (1280x720). */
  public var bannerTvMediumImageUrl: String?

  /** The image map script for the large banner image. */
  public var largeBrandedBannerImageImapScript: LocalizedProperty?

  /** The URL for the 854px by 70px image that appears below the video player in the expanded video view of the video watch page. */
  public var largeBrandedBannerImageUrl: LocalizedProperty?

  /** The image map script for the small banner image. */
  public var smallBrandedBannerImageImapScript: LocalizedProperty?

  /** The URL for the 640px by 70px banner image that appears below the video player in the default view of the video watch page. The URL for the image that appears above the top-left corner of the video player. This is a 25-pixel-high image with a flexible width that cannot exceed 170 pixels. */
  public var smallBrandedBannerImageUrl: LocalizedProperty?

  /** The URL for a 1px by 1px tracking pixel that can be used to collect statistics for views of the channel or video pages. */
  public var trackingImageUrl: String?

  public var watchIconImageUrl: String?

  public init(backgroundImageUrl: LocalizedProperty? = nil, bannerExternalUrl: String? = nil, bannerImageUrl: String? = nil, bannerMobileExtraHdImageUrl: String? = nil, bannerMobileHdImageUrl: String? = nil, bannerMobileImageUrl: String? = nil, bannerMobileLowImageUrl: String? = nil, bannerMobileMediumHdImageUrl: String? = nil, bannerTabletExtraHdImageUrl: String? = nil, bannerTabletHdImageUrl: String? = nil, bannerTabletImageUrl: String? = nil, bannerTabletLowImageUrl: String? = nil, bannerTvHighImageUrl: String? = nil, bannerTvImageUrl: String? = nil, bannerTvLowImageUrl: String? = nil, bannerTvMediumImageUrl: String? = nil, largeBrandedBannerImageImapScript: LocalizedProperty? = nil, largeBrandedBannerImageUrl: LocalizedProperty? = nil, smallBrandedBannerImageImapScript: LocalizedProperty? = nil, smallBrandedBannerImageUrl: LocalizedProperty? = nil, trackingImageUrl: String? = nil, watchIconImageUrl: String? = nil) {
    self.backgroundImageUrl = backgroundImageUrl
    self.bannerExternalUrl = bannerExternalUrl
    self.bannerImageUrl = bannerImageUrl
    self.bannerMobileExtraHdImageUrl = bannerMobileExtraHdImageUrl
    self.bannerMobileHdImageUrl = bannerMobileHdImageUrl
    self.bannerMobileImageUrl = bannerMobileImageUrl
    self.bannerMobileLowImageUrl = bannerMobileLowImageUrl
    self.bannerMobileMediumHdImageUrl = bannerMobileMediumHdImageUrl
    self.bannerTabletExtraHdImageUrl = bannerTabletExtraHdImageUrl
    self.bannerTabletHdImageUrl = bannerTabletHdImageUrl
    self.bannerTabletImageUrl = bannerTabletImageUrl
    self.bannerTabletLowImageUrl = bannerTabletLowImageUrl
    self.bannerTvHighImageUrl = bannerTvHighImageUrl
    self.bannerTvImageUrl = bannerTvImageUrl
    self.bannerTvLowImageUrl = bannerTvLowImageUrl
    self.bannerTvMediumImageUrl = bannerTvMediumImageUrl
    self.largeBrandedBannerImageImapScript = largeBrandedBannerImageImapScript
    self.largeBrandedBannerImageUrl = largeBrandedBannerImageUrl
    self.smallBrandedBannerImageImapScript = smallBrandedBannerImageImapScript
    self.smallBrandedBannerImageUrl = smallBrandedBannerImageUrl
    self.trackingImageUrl = trackingImageUrl
    self.watchIconImageUrl = watchIconImageUrl
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    backgroundImageUrl = try container.decodeIfPresent("backgroundImageUrl")
    bannerExternalUrl = try container.decodeIfPresent("bannerExternalUrl")
    bannerImageUrl = try container.decodeIfPresent("bannerImageUrl")
    bannerMobileExtraHdImageUrl = try container.decodeIfPresent("bannerMobileExtraHdImageUrl")
    bannerMobileHdImageUrl = try container.decodeIfPresent("bannerMobileHdImageUrl")
    bannerMobileImageUrl = try container.decodeIfPresent("bannerMobileImageUrl")
    bannerMobileLowImageUrl = try container.decodeIfPresent("bannerMobileLowImageUrl")
    bannerMobileMediumHdImageUrl = try container.decodeIfPresent("bannerMobileMediumHdImageUrl")
    bannerTabletExtraHdImageUrl = try container.decodeIfPresent("bannerTabletExtraHdImageUrl")
    bannerTabletHdImageUrl = try container.decodeIfPresent("bannerTabletHdImageUrl")
    bannerTabletImageUrl = try container.decodeIfPresent("bannerTabletImageUrl")
    bannerTabletLowImageUrl = try container.decodeIfPresent("bannerTabletLowImageUrl")
    bannerTvHighImageUrl = try container.decodeIfPresent("bannerTvHighImageUrl")
    bannerTvImageUrl = try container.decodeIfPresent("bannerTvImageUrl")
    bannerTvLowImageUrl = try container.decodeIfPresent("bannerTvLowImageUrl")
    bannerTvMediumImageUrl = try container.decodeIfPresent("bannerTvMediumImageUrl")
    largeBrandedBannerImageImapScript = try container.decodeIfPresent("largeBrandedBannerImageImapScript")
    largeBrandedBannerImageUrl = try container.decodeIfPresent("largeBrandedBannerImageUrl")
    smallBrandedBannerImageImapScript = try container.decodeIfPresent("smallBrandedBannerImageImapScript")
    smallBrandedBannerImageUrl = try container.decodeIfPresent("smallBrandedBannerImageUrl")
    trackingImageUrl = try container.decodeIfPresent("trackingImageUrl")
    watchIconImageUrl = try container.decodeIfPresent("watchIconImageUrl")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(backgroundImageUrl, forKey: "backgroundImageUrl")
    try container.encodeIfPresent(bannerExternalUrl, forKey: "bannerExternalUrl")
    try container.encodeIfPresent(bannerImageUrl, forKey: "bannerImageUrl")
    try container.encodeIfPresent(bannerMobileExtraHdImageUrl, forKey: "bannerMobileExtraHdImageUrl")
    try container.encodeIfPresent(bannerMobileHdImageUrl, forKey: "bannerMobileHdImageUrl")
    try container.encodeIfPresent(bannerMobileImageUrl, forKey: "bannerMobileImageUrl")
    try container.encodeIfPresent(bannerMobileLowImageUrl, forKey: "bannerMobileLowImageUrl")
    try container.encodeIfPresent(bannerMobileMediumHdImageUrl, forKey: "bannerMobileMediumHdImageUrl")
    try container.encodeIfPresent(bannerTabletExtraHdImageUrl, forKey: "bannerTabletExtraHdImageUrl")
    try container.encodeIfPresent(bannerTabletHdImageUrl, forKey: "bannerTabletHdImageUrl")
    try container.encodeIfPresent(bannerTabletImageUrl, forKey: "bannerTabletImageUrl")
    try container.encodeIfPresent(bannerTabletLowImageUrl, forKey: "bannerTabletLowImageUrl")
    try container.encodeIfPresent(bannerTvHighImageUrl, forKey: "bannerTvHighImageUrl")
    try container.encodeIfPresent(bannerTvImageUrl, forKey: "bannerTvImageUrl")
    try container.encodeIfPresent(bannerTvLowImageUrl, forKey: "bannerTvLowImageUrl")
    try container.encodeIfPresent(bannerTvMediumImageUrl, forKey: "bannerTvMediumImageUrl")
    try container.encodeIfPresent(largeBrandedBannerImageImapScript, forKey: "largeBrandedBannerImageImapScript")
    try container.encodeIfPresent(largeBrandedBannerImageUrl, forKey: "largeBrandedBannerImageUrl")
    try container.encodeIfPresent(smallBrandedBannerImageImapScript, forKey: "smallBrandedBannerImageImapScript")
    try container.encodeIfPresent(smallBrandedBannerImageUrl, forKey: "smallBrandedBannerImageUrl")
    try container.encodeIfPresent(trackingImageUrl, forKey: "trackingImageUrl")
    try container.encodeIfPresent(watchIconImageUrl, forKey: "watchIconImageUrl")
  }
}

import Foundation
import Prch

/** Details about a resource which is being promoted. */
public struct ActivityContentDetailsPromotedItem: Model {
  /** The type of call-to-action, a message to the user indicating action that can be taken. */
  public enum CtaType: String, Codable, Equatable, CaseIterable {
    case ctaTypeUnspecified
    case visitAdvertiserSite
  }

  /** The URL the client should fetch to request a promoted item. */
  public var adTag: String?

  /** The URL the client should ping to indicate that the user clicked through on this promoted item. */
  public var clickTrackingUrl: String?

  /** The URL the client should ping to indicate that the user was shown this promoted item. */
  public var creativeViewUrl: String?

  /** The type of call-to-action, a message to the user indicating action that can be taken. */
  public var ctaType: CtaType?

  /** The custom call-to-action button text. If specified, it will override the default button text for the cta_type. */
  public var customCtaButtonText: String?

  /** The text description to accompany the promoted item. */
  public var descriptionText: String?

  /** The URL the client should direct the user to, if the user chooses to visit the advertiser's website. */
  public var destinationUrl: String?

  /** The list of forecasting URLs. The client should ping all of these URLs when a promoted item is not available, to indicate that a promoted item could have been shown. */
  public var forecastingUrl: [String]?

  /** The list of impression URLs. The client should ping all of these URLs to indicate that the user was shown this promoted item. */
  public var impressionUrl: [String]?

  /** The ID that YouTube uses to uniquely identify the promoted video. */
  public var videoId: String?

  public init(adTag: String? = nil, clickTrackingUrl: String? = nil, creativeViewUrl: String? = nil, ctaType: CtaType? = nil, customCtaButtonText: String? = nil, descriptionText: String? = nil, destinationUrl: String? = nil, forecastingUrl: [String]? = nil, impressionUrl: [String]? = nil, videoId: String? = nil) {
    self.adTag = adTag
    self.clickTrackingUrl = clickTrackingUrl
    self.creativeViewUrl = creativeViewUrl
    self.ctaType = ctaType
    self.customCtaButtonText = customCtaButtonText
    self.descriptionText = descriptionText
    self.destinationUrl = destinationUrl
    self.forecastingUrl = forecastingUrl
    self.impressionUrl = impressionUrl
    self.videoId = videoId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    adTag = try container.decodeIfPresent("adTag")
    clickTrackingUrl = try container.decodeIfPresent("clickTrackingUrl")
    creativeViewUrl = try container.decodeIfPresent("creativeViewUrl")
    ctaType = try container.decodeIfPresent("ctaType")
    customCtaButtonText = try container.decodeIfPresent("customCtaButtonText")
    descriptionText = try container.decodeIfPresent("descriptionText")
    destinationUrl = try container.decodeIfPresent("destinationUrl")
    forecastingUrl = try container.decodeArrayIfPresent("forecastingUrl")
    impressionUrl = try container.decodeArrayIfPresent("impressionUrl")
    videoId = try container.decodeIfPresent("videoId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(adTag, forKey: "adTag")
    try container.encodeIfPresent(clickTrackingUrl, forKey: "clickTrackingUrl")
    try container.encodeIfPresent(creativeViewUrl, forKey: "creativeViewUrl")
    try container.encodeIfPresent(ctaType, forKey: "ctaType")
    try container.encodeIfPresent(customCtaButtonText, forKey: "customCtaButtonText")
    try container.encodeIfPresent(descriptionText, forKey: "descriptionText")
    try container.encodeIfPresent(destinationUrl, forKey: "destinationUrl")
    try container.encodeIfPresent(forecastingUrl, forKey: "forecastingUrl")
    try container.encodeIfPresent(impressionUrl, forKey: "impressionUrl")
    try container.encodeIfPresent(videoId, forKey: "videoId")
  }
}

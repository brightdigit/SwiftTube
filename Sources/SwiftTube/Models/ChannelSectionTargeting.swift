import Foundation
import Prch

/** ChannelSection targeting setting. */
public struct ChannelSectionTargeting: Model {
  /** The country the channel section is targeting. */
  public var countries: [String]?

  /** The language the channel section is targeting. */
  public var languages: [String]?

  /** The region the channel section is targeting. */
  public var regions: [String]?

  public init(countries: [String]? = nil, languages: [String]? = nil, regions: [String]? = nil) {
    self.countries = countries
    self.languages = languages
    self.regions = regions
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    countries = try container.decodeArrayIfPresent("countries")
    languages = try container.decodeArrayIfPresent("languages")
    regions = try container.decodeArrayIfPresent("regions")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(countries, forKey: "countries")
    try container.encodeIfPresent(languages, forKey: "languages")
    try container.encodeIfPresent(regions, forKey: "regions")
  }
}

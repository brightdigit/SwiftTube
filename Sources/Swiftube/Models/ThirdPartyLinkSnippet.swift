import Foundation
import Prch

/** Basic information about a third party account link, including its type and type-specific information. */
public struct ThirdPartyLinkSnippet: Model {
  /** Type of the link named after the entities that are being linked. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case linkUnspecified
    case channelToStoreLink
  }

  /** Information specific to a link between a channel and a store on a merchandising platform. */
  public var channelToStoreLink: ChannelToStoreLinkDetails?

  /** Type of the link named after the entities that are being linked. */
  public var type: `Type`?

  public init(channelToStoreLink: ChannelToStoreLinkDetails? = nil, type: Type? = nil) {
    self.channelToStoreLink = channelToStoreLink
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    channelToStoreLink = try container.decodeIfPresent("channelToStoreLink")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(channelToStoreLink, forKey: "channelToStoreLink")
    try container.encodeIfPresent(type, forKey: "type")
  }
}

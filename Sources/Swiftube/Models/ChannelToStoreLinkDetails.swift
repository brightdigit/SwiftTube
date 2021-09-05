import Foundation
import Prch

/** Information specific to a store on a merchandising platform linked to a YouTube channel. */
public struct ChannelToStoreLinkDetails: Model {
  /** Name of the store. */
  public var storeName: String?

  /** Landing page of the store. */
  public var storeUrl: String?

  public init(storeName: String? = nil, storeUrl: String? = nil) {
    self.storeName = storeName
    self.storeUrl = storeUrl
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    storeName = try container.decodeIfPresent("storeName")
    storeUrl = try container.decodeIfPresent("storeUrl")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(storeName, forKey: "storeName")
    try container.encodeIfPresent(storeUrl, forKey: "storeUrl")
  }
}

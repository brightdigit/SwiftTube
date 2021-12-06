import Foundation
import Prch

/** Details about a social network post. */
public struct ActivityContentDetailsSocial: Model {
  /** The name of the social network. */
  public enum `Type`: String, Codable, Equatable, CaseIterable {
    case unspecified
    case googlePlus
    case facebook
    case twitter
  }

  /** The author of the social network post. */
  public var author: String?

  /** An image of the post's author. */
  public var imageUrl: String?

  /** The URL of the social network post. */
  public var referenceUrl: String?

  /** The resourceId object encapsulates information that identifies the resource associated with a social network post. */
  public var resourceId: ResourceId?

  /** The name of the social network. */
  public var type: `Type`?

  public init(author: String? = nil, imageUrl: String? = nil, referenceUrl: String? = nil, resourceId: ResourceId? = nil, type: Type? = nil) {
    self.author = author
    self.imageUrl = imageUrl
    self.referenceUrl = referenceUrl
    self.resourceId = resourceId
    self.type = type
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    author = try container.decodeIfPresent("author")
    imageUrl = try container.decodeIfPresent("imageUrl")
    referenceUrl = try container.decodeIfPresent("referenceUrl")
    resourceId = try container.decodeIfPresent("resourceId")
    type = try container.decodeIfPresent("type")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(author, forKey: "author")
    try container.encodeIfPresent(imageUrl, forKey: "imageUrl")
    try container.encodeIfPresent(referenceUrl, forKey: "referenceUrl")
    try container.encodeIfPresent(resourceId, forKey: "resourceId")
    try container.encodeIfPresent(type, forKey: "type")
  }
}

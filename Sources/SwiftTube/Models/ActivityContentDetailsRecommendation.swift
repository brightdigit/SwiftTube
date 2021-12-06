import Foundation
import Prch

/** Information that identifies the recommended resource. */
public struct ActivityContentDetailsRecommendation: Model {
  /** The reason that the resource is recommended to the user. */
  public enum Reason: String, Codable, Equatable, CaseIterable {
    case reasonUnspecified
    case videoFavorited
    case videoLiked
    case videoWatched
  }

  /** The reason that the resource is recommended to the user. */
  public var reason: Reason?

  /** The resourceId object contains information that identifies the recommended resource. */
  public var resourceId: ResourceId?

  /** The seedResourceId object contains information about the resource that caused the recommendation. */
  public var seedResourceId: ResourceId?

  public init(reason: Reason? = nil, resourceId: ResourceId? = nil, seedResourceId: ResourceId? = nil) {
    self.reason = reason
    self.resourceId = resourceId
    self.seedResourceId = seedResourceId
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    reason = try container.decodeIfPresent("reason")
    resourceId = try container.decodeIfPresent("resourceId")
    seedResourceId = try container.decodeIfPresent("seedResourceId")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(reason, forKey: "reason")
    try container.encodeIfPresent(resourceId, forKey: "resourceId")
    try container.encodeIfPresent(seedResourceId, forKey: "seedResourceId")
  }
}

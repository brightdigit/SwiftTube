import Foundation
import Prch

/** Details about the content to witch a subscription refers. */
public struct SubscriptionContentDetails: Model {
  /** The type of activity this subscription is for (only uploads, everything). */
  public enum ActivityType: String, Codable, Equatable, CaseIterable {
    case subscriptionActivityTypeUnspecified
    case all
    case uploads
  }

  /** The type of activity this subscription is for (only uploads, everything). */
  public var activityType: ActivityType?

  /** The number of new items in the subscription since its content was last read. */
  public var newItemCount: Int?

  /** The approximate number of items that the subscription points to. */
  public var totalItemCount: Int?

  public init(activityType: ActivityType? = nil, newItemCount: Int? = nil, totalItemCount: Int? = nil) {
    self.activityType = activityType
    self.newItemCount = newItemCount
    self.totalItemCount = totalItemCount
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    activityType = try container.decodeIfPresent("activityType")
    newItemCount = try container.decodeIfPresent("newItemCount")
    totalItemCount = try container.decodeIfPresent("totalItemCount")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(activityType, forKey: "activityType")
    try container.encodeIfPresent(newItemCount, forKey: "newItemCount")
    try container.encodeIfPresent(totalItemCount, forKey: "totalItemCount")
  }
}

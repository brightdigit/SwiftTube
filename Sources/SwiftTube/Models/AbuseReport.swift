import Foundation
import Prch

public struct AbuseReport: Model {
  public var abuseTypes: [AbuseType]?

  public var description: String?

  public var relatedEntities: [RelatedEntity]?

  public var subject: Entity?

  public init(abuseTypes: [AbuseType]? = nil, description: String? = nil, relatedEntities: [RelatedEntity]? = nil, subject: Entity? = nil) {
    self.abuseTypes = abuseTypes
    self.description = description
    self.relatedEntities = relatedEntities
    self.subject = subject
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    abuseTypes = try container.decodeArrayIfPresent("abuseTypes")
    description = try container.decodeIfPresent("description")
    relatedEntities = try container.decodeArrayIfPresent("relatedEntities")
    subject = try container.decodeIfPresent("subject")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(abuseTypes, forKey: "abuseTypes")
    try container.encodeIfPresent(description, forKey: "description")
    try container.encodeIfPresent(relatedEntities, forKey: "relatedEntities")
    try container.encodeIfPresent(subject, forKey: "subject")
  }
}

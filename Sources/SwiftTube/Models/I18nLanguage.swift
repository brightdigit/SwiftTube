import Foundation
import Prch

/** An *i18nLanguage* resource identifies a UI language currently supported by YouTube. */
public struct I18nLanguage: Model {
  /** Etag of this resource. */
  public var etag: String?

  /** The ID that YouTube uses to uniquely identify the i18n language. */
  public var id: String?

  /** Identifies what kind of resource this is. Value: the fixed string "youtube#i18nLanguage". */
  public var kind: String?

  /** The snippet object contains basic details about the i18n language, such as language code and human-readable name. */
  public var snippet: I18nLanguageSnippet?

  public init(etag: String? = nil, id: String? = nil, kind: String? = nil, snippet: I18nLanguageSnippet? = nil) {
    self.etag = etag
    self.id = id
    self.kind = kind
    self.snippet = snippet
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    etag = try container.decodeIfPresent("etag")
    id = try container.decodeIfPresent("id")
    kind = try container.decodeIfPresent("kind")
    snippet = try container.decodeIfPresent("snippet")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(etag, forKey: "etag")
    try container.encodeIfPresent(id, forKey: "id")
    try container.encodeIfPresent(kind, forKey: "kind")
    try container.encodeIfPresent(snippet, forKey: "snippet")
  }
}

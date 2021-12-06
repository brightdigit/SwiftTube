import Foundation
import Prch

/** Paging details for lists of resources, including total number of items available and number of resources returned in a single page. */
public struct PageInfo: Model {
  /** The number of results included in the API response. */
  public var resultsPerPage: Int?

  /** The total number of results in the result set. */
  public var totalResults: Int?

  public init(resultsPerPage: Int? = nil, totalResults: Int? = nil) {
    self.resultsPerPage = resultsPerPage
    self.totalResults = totalResults
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    resultsPerPage = try container.decodeIfPresent("resultsPerPage")
    totalResults = try container.decodeIfPresent("totalResults")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(resultsPerPage, forKey: "resultsPerPage")
    try container.encodeIfPresent(totalResults, forKey: "totalResults")
  }
}

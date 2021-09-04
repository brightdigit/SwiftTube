import Foundation
import Prch

/** Video processing progress and completion time estimate. */
public struct VideoProcessingDetailsProcessingProgress: Model {
  /** The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating: 100 * parts_processed / parts_total Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video. */
  public var partsProcessed: String?

  /** An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video. */
  public var partsTotal: String?

  /** An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video. */
  public var timeLeftMs: String?

  public init(partsProcessed: String? = nil, partsTotal: String? = nil, timeLeftMs: String? = nil) {
    self.partsProcessed = partsProcessed
    self.partsTotal = partsTotal
    self.timeLeftMs = timeLeftMs
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: StringCodingKey.self)

    partsProcessed = try container.decodeIfPresent("partsProcessed")
    partsTotal = try container.decodeIfPresent("partsTotal")
    timeLeftMs = try container.decodeIfPresent("timeLeftMs")
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.container(keyedBy: StringCodingKey.self)

    try container.encodeIfPresent(partsProcessed, forKey: "partsProcessed")
    try container.encodeIfPresent(partsTotal, forKey: "partsTotal")
    try container.encodeIfPresent(timeLeftMs, forKey: "timeLeftMs")
  }
}

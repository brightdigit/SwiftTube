/** Data format for response. */
public enum Alt: String, Codable, Equatable, CaseIterable {
  case json
  case media
  case proto
}

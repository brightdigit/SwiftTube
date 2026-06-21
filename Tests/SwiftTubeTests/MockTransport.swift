import Foundation
import HTTPTypes
import OpenAPIRuntime

/// A `ClientTransport` that returns pre-canned JSON bodies keyed by URL path.
///
/// For paged endpoints, supply an array of bodies; each successive request to
/// the same path pops the next response. Records every request it receives.
///
/// Implemented as an `actor` so it is fully concurrency-safe without an
/// unchecked-Sendable escape hatch (the package lints those as an error under
/// STRICT).
internal actor MockTransport: ClientTransport {
  /// JSON response bodies keyed by URL path; consumed in order per path.
  private var responses: [String: [String]]
  /// Status code returned for every request.
  private let status: Int
  /// Every request URL the transport observed, in order.
  internal private(set) var requestedURLs: [String] = []

  internal init(responses: [String: [String]], status: Int = 200) {
    self.responses = responses
    self.status = status
  }

  internal func send(
    _ request: HTTPRequest,
    body _: HTTPBody?,
    baseURL _: URL,
    operationID _: String
  ) async throws -> (HTTPResponse, HTTPBody?) {
    let path = request.path ?? ""
    requestedURLs.append(path)
    let key = String(path.split(separator: "?").first ?? "")

    guard var queue = responses[key], !queue.isEmpty else {
      return (HTTPResponse(status: .init(code: 404)), nil)
    }
    let json = queue.removeFirst()
    responses[key] = queue

    let response = HTTPResponse(
      status: .init(code: status),
      headerFields: [.contentType: "application/json"]
    )
    return (response, HTTPBody(json))
  }
}

internal enum Fixtures {
  /// First playlist page; carries `nextPageToken` so pagination continues.
  internal static let playlistPage1 = """
    {"nextPageToken":"PAGE2","items":[\
    {"snippet":{"resourceId":{"videoId":"vid1"}}},\
    {"snippet":{"resourceId":{"videoId":"vid2"}}}]}
    """

  /// Final playlist page; no `nextPageToken`.
  internal static let playlistPage2 = """
    {"items":[{"snippet":{"resourceId":{"videoId":"vid3"}}}]}
    """

  /// Video details for the three ids, in order.
  internal static let videos = """
    {"items":[\
    {"id":"vid1","contentDetails":{"duration":"PT10M"},"snippet":{"title":"First",\
    "description":"d1","publishedAt":"2020-01-01T00:00:00Z",\
    "thumbnails":{"standard":{"url":"https://img/1.jpg"}}}},\
    {"id":"vid2","contentDetails":{"duration":"PT20M"},"snippet":{"title":"Second",\
    "description":"d2","publishedAt":"2020-01-02T00:00:00Z",\
    "thumbnails":{"standard":{"url":"https://img/2.jpg"}}}},\
    {"id":"vid3","contentDetails":{"duration":"PT30M"},"snippet":{"title":"Third",\
    "description":"d3","publishedAt":"2020-01-03T00:00:00Z",\
    "thumbnails":{"standard":{"url":"https://img/3.jpg"}}}}]}
    """

  /// Builds a `playlistItems.list` page body for the given video ids, optionally
  /// carrying a `nextPageToken` so pagination continues.
  internal static func playlistPage(
    ids: [String],
    nextPageToken: String? = nil
  ) -> String {
    let items = ids.map {
      #"{"snippet":{"resourceId":{"videoId":"\#($0)"}}}"#
    }
    .joined(separator: ",")
    let token = nextPageToken.map { #""nextPageToken":"\#($0)","# } ?? ""
    return #"{\#(token)"items":[\#(items)]}"#
  }

  /// Builds a `videos.list` body for the given ids (in the order supplied), with
  /// title/description/duration/thumbnail derived from each id.
  internal static func videos(ids: [String]) -> String {
    let items = ids.map { id in
      #"""
      {"id":"\#(id)","contentDetails":{"duration":"PT5M"},\#
      "snippet":{"title":"T-\#(id)","description":"desc-\#(id)",\#
      "publishedAt":"2020-01-01T00:00:00Z",\#
      "thumbnails":{"standard":{"url":"https://img/\#(id).jpg"}}}}
      """#
    }
    .joined(separator: ",")
    return #"{"items":[\#(items)]}"#
  }
}

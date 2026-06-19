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
}

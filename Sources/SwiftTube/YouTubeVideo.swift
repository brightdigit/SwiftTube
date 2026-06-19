//
//  YouTubeVideo.swift
//  SwiftTube
//
//  Created by Leo Dion.
//  Copyright © 2026 BrightDigit.
//
//  Permission is hereby granted, free of charge, to any person
//  obtaining a copy of this software and associated documentation
//  files (the "Software"), to deal in the Software without
//  restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or
//  sell copies of the Software, and to permit persons to whom the
//  Software is furnished to do so, subject to the following
//  conditions:
//
//  The above copyright notice and this permission notice shall be
//  included in all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

import Foundation

/// A YouTube video, reduced to the fields the importer reads.
///
/// All fields are optional because the importer is responsible for validating
/// presence and emitting domain-specific errors; this type intentionally does
/// not throw.
public struct YouTubeVideo: Equatable, Sendable {
  /// The video id.
  public let id: String?
  /// The video title.
  public let title: String?
  /// The video description.
  public let description: String?
  /// Publish timestamp, decoded from the API's ISO 8601 `date-time` field.
  public let publishedAt: Date?
  /// ISO 8601 duration string (e.g. `PT1H2M3S`).
  public let duration: String?
  /// URL of the `standard` thumbnail, if present.
  public let standardThumbnailURL: String?

  /// Memberwise initializer.
  public init(
    id: String?,
    title: String?,
    description: String?,
    publishedAt: Date?,
    duration: String?,
    standardThumbnailURL: String?
  ) {
    self.id = id
    self.title = title
    self.description = description
    self.publishedAt = publishedAt
    self.duration = duration
    self.standardThumbnailURL = standardThumbnailURL
  }
}

extension YouTubeVideo {
  /// Maps a generated OpenAPI `Video` schema into the flat importer model.
  internal init(from video: Components.Schemas.Video) {
    self.init(
      id: video.id,
      title: video.snippet?.title,
      description: video.snippet?.description,
      publishedAt: video.snippet?.publishedAt,
      duration: video.contentDetails?.duration,
      standardThumbnailURL: video.snippet?.thumbnails?.standard?.url
    )
  }
}

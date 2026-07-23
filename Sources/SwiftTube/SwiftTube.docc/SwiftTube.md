# ``SwiftTube``

A lightweight, `async`/`await` Swift client for a focused slice of the YouTube Data API v3.

## Overview

SwiftTube is intentionally small. Rather than wrapping all of YouTube's operations, it
exposes only what's needed to enumerate the videos in a playlist: it follows
`playlistItems.list` pagination, then fetches `videos.list` details in batches. The
generated OpenAPI client is filtered to just those two operations and committed to the
repo, so there is no codegen step at build time.

## Topics

### Essentials

- ``YouTubeClient``
- ``Video``

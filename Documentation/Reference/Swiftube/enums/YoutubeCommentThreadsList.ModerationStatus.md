**ENUM**

# `YoutubeCommentThreadsList.ModerationStatus`

```swift
public enum ModerationStatus: String, Codable, Equatable, CaseIterable
```

Limits the returned comment threads to those with the specified moderation status. Not compatible with the 'id' filter. Valid values: published, heldForReview, likelySpam.

## Cases
### `published`

```swift
case published
```

### `heldForReview`

```swift
case heldForReview
```

### `likelySpam`

```swift
case likelySpam
```

### `rejected`

```swift
case rejected
```

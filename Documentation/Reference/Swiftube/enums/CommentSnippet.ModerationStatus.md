**ENUM**

# `CommentSnippet.ModerationStatus`

```swift
public enum ModerationStatus: String, Codable, Equatable, CaseIterable
```

The comment's moderation status. Will not be set if the comments were requested through the id filter.

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

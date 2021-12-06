**ENUM**

# `YoutubeCommentsSetModerationStatus.ModerationStatus`

```swift
public enum ModerationStatus: String, Codable, Equatable, CaseIterable
```

Specifies the requested moderation status. Note, comments can be in statuses, which are not available through this call. For example, this call does not allow to mark a comment as 'likely spam'. Valid values: MODERATION_STATUS_PUBLISHED, MODERATION_STATUS_HELD_FOR_REVIEW, MODERATION_STATUS_REJECTED.

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

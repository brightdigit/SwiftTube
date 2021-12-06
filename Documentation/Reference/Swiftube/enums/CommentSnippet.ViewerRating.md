**ENUM**

# `CommentSnippet.ViewerRating`

```swift
public enum ViewerRating: String, Codable, Equatable, CaseIterable
```

The rating the viewer has given to this comment. For the time being this will never return RATE_TYPE_DISLIKE and instead return RATE_TYPE_NONE. This may change in the future.

## Cases
### `none`

```swift
case none
```

### `like`

```swift
case like
```

### `dislike`

```swift
case dislike
```

**ENUM**

# `YoutubeVideosList.MyRating`

```swift
public enum MyRating: String, Codable, Equatable, CaseIterable
```

Return videos liked/disliked by the authenticated user. Does not support RateType.RATED_TYPE_NONE.

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

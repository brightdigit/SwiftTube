**ENUM**

# `InvideoTiming.Type`

```swift
public enum `Type`: String, Codable, Equatable, CaseIterable
```

Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video.

## Cases
### `offsetFromStart`

```swift
case offsetFromStart
```

### `offsetFromEnd`

```swift
case offsetFromEnd
```

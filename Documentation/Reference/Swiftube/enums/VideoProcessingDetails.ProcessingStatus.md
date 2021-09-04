**ENUM**

# `VideoProcessingDetails.ProcessingStatus`

```swift
public enum ProcessingStatus: String, Codable, Equatable, CaseIterable
```

The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed.

## Cases
### `processing`

```swift
case processing
```

### `succeeded`

```swift
case succeeded
```

### `failed`

```swift
case failed
```

### `terminated`

```swift
case terminated
```

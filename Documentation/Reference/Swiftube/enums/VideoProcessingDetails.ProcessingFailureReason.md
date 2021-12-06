**ENUM**

# `VideoProcessingDetails.ProcessingFailureReason`

```swift
public enum ProcessingFailureReason: String, Codable, Equatable, CaseIterable
```

The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed.

## Cases
### `uploadFailed`

```swift
case uploadFailed
```

### `transcodeFailed`

```swift
case transcodeFailed
```

### `streamingFailed`

```swift
case streamingFailed
```

### `other`

```swift
case other
```

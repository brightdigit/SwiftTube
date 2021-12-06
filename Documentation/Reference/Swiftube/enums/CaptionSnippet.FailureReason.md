**ENUM**

# `CaptionSnippet.FailureReason`

```swift
public enum FailureReason: String, Codable, Equatable, CaseIterable
```

The reason that YouTube failed to process the caption track. This property is only present if the state property's value is failed.

## Cases
### `unknownFormat`

```swift
case unknownFormat
```

### `unsupportedFormat`

```swift
case unsupportedFormat
```

### `processingFailed`

```swift
case processingFailed
```

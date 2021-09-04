**ENUM**

# `VideoStatus.FailureReason`

```swift
public enum FailureReason: String, Codable, Equatable, CaseIterable
```

This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed.

## Cases
### `conversion`

```swift
case conversion
```

### `invalidFile`

```swift
case invalidFile
```

### `emptyFile`

```swift
case emptyFile
```

### `tooSmall`

```swift
case tooSmall
```

### `codec`

```swift
case codec
```

### `uploadAborted`

```swift
case uploadAborted
```

**ENUM**

# `VideoSuggestions.ProcessingErrors`

```swift
public enum ProcessingErrors: String, Codable, Equatable, CaseIterable
```

A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed.

## Cases
### `audioFile`

```swift
case audioFile
```

### `imageFile`

```swift
case imageFile
```

### `projectFile`

```swift
case projectFile
```

### `notAVideoFile`

```swift
case notAVideoFile
```

### `docFile`

```swift
case docFile
```

### `archiveFile`

```swift
case archiveFile
```

### `unsupportedSpatialAudioLayout`

```swift
case unsupportedSpatialAudioLayout
```

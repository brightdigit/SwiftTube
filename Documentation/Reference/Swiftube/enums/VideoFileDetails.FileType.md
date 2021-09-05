**ENUM**

# `VideoFileDetails.FileType`

```swift
public enum FileType: String, Codable, Equatable, CaseIterable
```

The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded.

## Cases
### `video`

```swift
case video
```

### `audio`

```swift
case audio
```

### `image`

```swift
case image
```

### `archive`

```swift
case archive
```

### `document`

```swift
case document
```

### `project`

```swift
case project
```

### `other`

```swift
case other
```

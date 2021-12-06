**ENUM**

# `VideoSuggestions.ProcessingWarnings`

```swift
public enum ProcessingWarnings: String, Codable, Equatable, CaseIterable
```

A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track.

## Cases
### `unknownContainer`

```swift
case unknownContainer
```

### `unknownVideoCodec`

```swift
case unknownVideoCodec
```

### `unknownAudioCodec`

```swift
case unknownAudioCodec
```

### `inconsistentResolution`

```swift
case inconsistentResolution
```

### `hasEditlist`

```swift
case hasEditlist
```

### `problematicVideoCodec`

```swift
case problematicVideoCodec
```

### `problematicAudioCodec`

```swift
case problematicAudioCodec
```

### `unsupportedVrStereoMode`

```swift
case unsupportedVrStereoMode
```

### `unsupportedSphericalProjectionType`

```swift
case unsupportedSphericalProjectionType
```

### `unsupportedHdrPixelFormat`

```swift
case unsupportedHdrPixelFormat
```

### `unsupportedHdrColorMetadata`

```swift
case unsupportedHdrColorMetadata
```

### `problematicHdrLookupTable`

```swift
case problematicHdrLookupTable
```

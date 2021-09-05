**STRUCT**

# `InvideoBranding`

```swift
public struct InvideoBranding: Model
```

LINT.IfChange Describes an invideo branding.

## Properties
### `imageBytes`

```swift
public var imageBytes: File?
```

The bytes the uploaded image. Only used in api to youtube communication.

### `imageUrl`

```swift
public var imageUrl: String?
```

The url of the uploaded image. Only used in apiary to api communication.

### `position`

```swift
public var position: InvideoPosition?
```

The spatial position within the video where the branding watermark will be displayed.

### `targetChannelId`

```swift
public var targetChannelId: String?
```

The channel to which this branding links. If not present it defaults to the current channel.

### `timing`

```swift
public var timing: InvideoTiming?
```

The temporal position within the video where watermark will be displayed.

## Methods
### `init(imageBytes:imageUrl:position:targetChannelId:timing:)`

```swift
public init(imageBytes: File? = nil, imageUrl: String? = nil, position: InvideoPosition? = nil, targetChannelId: String? = nil, timing: InvideoTiming? = nil)
```

### `init(from:)`

```swift
public init(from decoder: Decoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| decoder | The decoder to read data from. |

### `encode(to:)`

```swift
public func encode(to encoder: Encoder) throws
```

#### Parameters

| Name | Description |
| ---- | ----------- |
| encoder | The encoder to write data to. |
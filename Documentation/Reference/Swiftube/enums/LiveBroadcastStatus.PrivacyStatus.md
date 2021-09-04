**ENUM**

# `LiveBroadcastStatus.PrivacyStatus`

```swift
public enum PrivacyStatus: String, Codable, Equatable, CaseIterable
```

The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource.

## Cases
### `public`

```swift
case `public`
```

### `unlisted`

```swift
case unlisted
```

### `private`

```swift
case `private`
```

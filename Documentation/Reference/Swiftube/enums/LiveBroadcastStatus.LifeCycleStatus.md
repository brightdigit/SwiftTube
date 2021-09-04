**ENUM**

# `LiveBroadcastStatus.LifeCycleStatus`

```swift
public enum LifeCycleStatus: String, Codable, Equatable, CaseIterable
```

The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method.

## Cases
### `lifeCycleStatusUnspecified`

```swift
case lifeCycleStatusUnspecified
```

### `created`

```swift
case created
```

### `ready`

```swift
case ready
```

### `testing`

```swift
case testing
```

### `live`

```swift
case live
```

### `complete`

```swift
case complete
```

### `revoked`

```swift
case revoked
```

### `testStarting`

```swift
case testStarting
```

### `liveStarting`

```swift
case liveStarting
```

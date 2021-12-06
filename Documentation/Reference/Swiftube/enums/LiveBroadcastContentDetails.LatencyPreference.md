**ENUM**

# `LiveBroadcastContentDetails.LatencyPreference`

```swift
public enum LatencyPreference: String, Codable, Equatable, CaseIterable
```

If both this and enable_low_latency are set, they must match. LATENCY_NORMAL should match enable_low_latency=false LATENCY_LOW should match enable_low_latency=true LATENCY_ULTRA_LOW should have enable_low_latency omitted.

## Cases
### `latencyPreferenceUnspecified`

```swift
case latencyPreferenceUnspecified
```

### `normal`

```swift
case normal
```

### `low`

```swift
case low
```

### `ultraLow`

```swift
case ultraLow
```

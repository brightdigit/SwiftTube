**STRUCT**

# `GeoPoint`

```swift
public struct GeoPoint: Model
```

Geographical coordinates of a point, in WGS84.

## Properties
### `altitude`

```swift
public var altitude: Double?
```

Altitude above the reference ellipsoid, in meters.

### `latitude`

```swift
public var latitude: Double?
```

Latitude in degrees.

### `longitude`

```swift
public var longitude: Double?
```

Longitude in degrees.

## Methods
### `init(altitude:latitude:longitude:)`

```swift
public init(altitude: Double? = nil, latitude: Double? = nil, longitude: Double? = nil)
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
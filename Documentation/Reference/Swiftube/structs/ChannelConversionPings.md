**STRUCT**

# `ChannelConversionPings`

```swift
public struct ChannelConversionPings: Model
```

The conversionPings object encapsulates information about conversion pings that need to be respected by the channel.

## Properties
### `pings`

```swift
public var pings: [ChannelConversionPing]?
```

Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping.

## Methods
### `init(pings:)`

```swift
public init(pings: [ChannelConversionPing]? = nil)
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
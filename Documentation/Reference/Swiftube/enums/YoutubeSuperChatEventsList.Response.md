**ENUM**

# `YoutubeSuperChatEventsList.Response`

```swift
public enum Response: APIResponseValue, CustomStringConvertible, CustomDebugStringConvertible
```

## Cases
### `status200(_:)`

```swift
case status200(SuperChatEventListResponse)
```

Successful response

## Properties
### `success`

```swift
public var success: SuperChatEventListResponse?
```

### `response`

```swift
public var response: Any
```

### `statusCode`

```swift
public var statusCode: Int
```

### `successful`

```swift
public var successful: Bool
```

### `description`

```swift
public var description: String
```

### `debugDescription`

```swift
public var debugDescription: String
```

## Methods
### `init(statusCode:data:decoder:)`

```swift
public init(statusCode: Int, data: Data, decoder: ResponseDecoder) throws
```

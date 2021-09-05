**STRUCT**

# `PageInfo`

```swift
public struct PageInfo: Model
```

Paging details for lists of resources, including total number of items available and number of resources returned in a single page.

## Properties
### `resultsPerPage`

```swift
public var resultsPerPage: Int?
```

The number of results included in the API response.

### `totalResults`

```swift
public var totalResults: Int?
```

The total number of results in the result set.

## Methods
### `init(resultsPerPage:totalResults:)`

```swift
public init(resultsPerPage: Int? = nil, totalResults: Int? = nil)
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
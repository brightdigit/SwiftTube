**ENUM**

# `VideoStatus.RejectionReason`

```swift
public enum RejectionReason: String, Codable, Equatable, CaseIterable
```

This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected.

## Cases
### `copyright`

```swift
case copyright
```

### `inappropriate`

```swift
case inappropriate
```

### `duplicate`

```swift
case duplicate
```

### `termsOfUse`

```swift
case termsOfUse
```

### `uploaderAccountSuspended`

```swift
case uploaderAccountSuspended
```

### `length`

```swift
case length
```

### `claim`

```swift
case claim
```

### `uploaderAccountClosed`

```swift
case uploaderAccountClosed
```

### `trademark`

```swift
case trademark
```

### `legal`

```swift
case legal
```

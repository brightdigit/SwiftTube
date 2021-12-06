**ENUM**

# `ContentRating.MenaMpaaRating`

```swift
public enum MenaMpaaRating: String, Codable, Equatable, CaseIterable
```

The rating system for MENA countries, a clone of MPAA. It is needed to prevent titles go live w/o additional QC check, since some of them can be inappropriate for the countries at all. See b/33408548 for more details.

## Cases
### `menaMpaaUnspecified`

```swift
case menaMpaaUnspecified
```

### `menaMpaaG`

```swift
case menaMpaaG
```

### `menaMpaaPg`

```swift
case menaMpaaPg
```

### `menaMpaaPg13`

```swift
case menaMpaaPg13
```

### `menaMpaaR`

```swift
case menaMpaaR
```

### `menaMpaaUnrated`

```swift
case menaMpaaUnrated
```

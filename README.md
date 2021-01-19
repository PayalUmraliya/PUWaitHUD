# PUWaitHUD

## Introduction

`PUWaitHUD` is a few types of awesome loading animations that can be used to add as api response waiting indicators.

![Output](https://github.com/PayalUmraliya/PUWaitHUD/blob/main/output.gif)

## Animation types

| Type                   

1. Dashed 
2. Infinity)
3. Ripley)
4. Quarbit)

## Installation

### Cocoapods

[Cocoapods](https://cocoapods.org/#install) is a dependency manager for Swift and Objective-C Cocoa projects. To use PUWaitHUD with CocoaPods, add it in your `Podfile`.


pod 'PUWaitHUD'

To specify with version:

pod 'PUWaitHUD', :git => 'https://github.com/PayalUmraliya/PUWaitHUD.git', :branch => '1.0.4'


### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for managing the distribution of Swift code. To use NVActivityIndicatorView with Swift Package Manger, add it to `dependencies` in your `Package.swift`

```swift
dependencies: [
    .package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git")
]
```

## Usage

First you need to import `PUWaitHUD` at the view controller file where you are going to use.

```swift
import PUWaitHUD
```

### Initialization

```swift
NVActivityIndicatorView(frame: frame, type: type, color: color, padding: padding)
```
## License

The MIT License (MIT)

Copyright (c) 2021 Payal Umralya [behappy78600@gmail.com]

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

```swift
pod 'PUWaitHUD'
```

To specify with version:

```swift
pod 'PUWaitHUD', :git => 'https://github.com/PayalUmraliya/PUWaitHUD.git', :branch => '1.0.4'
```

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

### Show HUD

```swift
func showLoading(_ vwname: UIView, _ typee: ActivityIndicatorType)
{
    hideLoading()
    let vw = UIView.init(frame: UIScreen.main.bounds)
    vw.tag = 99999
    vw.backgroundColor = UIColor.black.withAlphaComponent(0.5)
    let activityView = ActivityIndicators().create(type: typee)
    vw.addSubview(activityView!)
    activityView?.color = .clear
    activityView?.center = vw.center
    activityView!.startAnimating()
    vwname.addSubview(vw)
}
```

### Hide HUD

```swift
func hideLoading()
{
    UIApplication.shared.windows.filter {$0.isKeyWindow}.first?.viewWithTag(99999)?.removeFromSuperview()
}
```

### Note: Above is the basic usage for the HUD you can manage the parameters for the functions as per your need in order to make it global.

###

## License

The MIT License (MIT)

Copyright (c) 2021 Payal Umralya [behappy78600@gmail.com]

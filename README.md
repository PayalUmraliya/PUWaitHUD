# PUWaitHUD

## Introduction

`PUWaitHUD` is a few types of awesome loading animations that can be used to add as api response waiting indicators.

![Output](https://github.com/PayalUmraliya/PUWaitHUD/blob/main/hudoutput.gif)

## Animation types

Types                   

1. Dashed 
2. Infinity
3. Ripley
4. Quarbit

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

## Usage

First you need to import `PUWaitHUD` at the view controller file where you are going to use.

```swift
import PUWaitHUD
```

### Show HUD Example

```swift
LoadingHud.showDefaultHUD(self.view,.dashed)
```

### Hide HUD 

```swift
LoadingHud.dismissHUD()
```

### Note: 

Above is the basic usage for the HUD, you can change type as per your need.

###

## License

The MIT License (MIT)

Copyright (c) 2021 TheKarma


## Author

Payal Umraliya [behappy78600@gmail.com] 

ツツツツツツ

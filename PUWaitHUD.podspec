#
#  Be sure to run `pod spec lint PUWaitHUD.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "PUWaitHUD"
  spec.version      = "1.0.3"
  spec.summary      = "A Waiting Loader to display until the API response receive."

 
  spec.description  = <<-DESC

This CocoaPods library helps you add loading HUD in your mobile application to display attractive loading in your app. 
                   DESC

  spec.homepage     = "https://github.com/PayalUmraliya/PUWaitHUD"

  spec.license      = { :type => "MIT", :file => "LICENSE" }


  spec.author             = { "Payal U." => "behappy78600@gmail.com" }
 
  spec.ios.deployment_target = "13.0"
spec.swift_version = "4.2"


  spec.source       = { :git => "https://github.com/PayalUmraliya/PUWaitHUD.git", :tag => "#{spec.version}" }


  spec.source_files  = "WaitLoadingPro/Source/**/*"


end

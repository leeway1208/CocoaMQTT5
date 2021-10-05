#
# Be sure to run `pod lib lint CocoaMQTT5.0.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CocoaMQTT5'
  s.version          = '1.0.2'
  s.summary          = 'MQTT v5.0 client library for iOS/macOS/tvOS written with Swift 5'
  s.homepage    = "https://github.com/emqx/CocoaMQTT/tree/dev/2.0"
  s.license     = { :type => "MIT" }
  s.authors     = { "Feng Lee" => "feng@emqtt.io", "CrazyWisdom" => "zh.whong@gmail.com", "Alex Yu" => "alexyu.dc@gmail.com", "Leeway" => "leeway1208@gmail.com"  }

  s.swift_version = "5.0"
  s.requires_arc = true
  s.osx.deployment_target = "10.12"
  s.ios.deployment_target = "10.0"
  s.tvos.deployment_target = "10.0"
  # s.watchos.deployment_target = "2.0"
  s.source   = { :git => "https://github.com/leeway1208/CocoaMQTT5.git", :tag => "1.0.2"}
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |ss|
    ss.dependency "CocoaAsyncSocket", "~> 7.6.3"
    ss.source_files = "Source/*.swift"
    ss.exclude_files = "Source/CocoaMQTTWebSocket.swift"
  end
  
  s.subspec 'WebSockets' do |ss|
    ss.dependency "CocoaMQTT5/Core"
    ss.dependency "Starscream", "~> 3.1.1"
    ss.source_files = "Source/CocoaMQTTWebSocket.swift"
  end
end
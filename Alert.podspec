#
# Be sure to run `pod lib lint Alert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Alert'
  s.version          = '1.0.0'
  s.summary          = 'A short description of Alert.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Criação de Alerta'

  s.homepage         = 'https://github.com/adaltopicotti/alert.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '13538187' => 'adaltocotti.jr@gmail.com' }
  s.source           = { :git => 'https://github.com/adaltopicotti/alert.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'

  s.source_files = 'Alert/Classes/**/*'
  s.default_subspecs = 'Release'
  
  s.subspec 'Release' do |release|
    release.vendored_frameworks = 'Framework/Alert.framework'
  end
  
  # s.resource_bundles = {
  #   'Alert' => ['Alert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

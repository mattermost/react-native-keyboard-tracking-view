require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "KeyboardTrackingView"
  s.version      = package['version']
  s.summary      = package['description']
  s.license      = package['license']

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platforms    = { :ios => "9.0" }

  s.source       = { :git => "https://github.com/wix/react-native-keyboard-tracking-view.git", :tag => "v#{s.version}" }
  s.source_files  = "lib/*.{h,m}"

  s.dependency 'React'
end
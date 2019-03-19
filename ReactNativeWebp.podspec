require 'json'
package = JSON.parse(File.read('./package.json'))

Pod::Spec.new do |s|
  s.name                = "ReactNativeWebp"
  s.version             = package["version"]
  s.summary             = package["description"]
  s.homepage            = "https://github.com/blend/react-native-screenshot-detector"
  s.license             = package['license']
  s.authors             = "Blend"
  s.description         = <<-DESC
                           Webp Support for react native
                          DESC
  s.source              = { :git => "https://github.com/tgensol/react-native-webp-support.git", :tag => "v#{s.version}" }
  s.platform            = :ios, "10.0"
  s.vendored_frameworks = 'WebP.framework', 'WebPDemux.framework'
  s.source_files        = 'ReactNativeWebp/**/*.{h,m}','*.{h,m}'
  s.dependency          'React'
end

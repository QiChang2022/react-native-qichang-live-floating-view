require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-qichang-live-floating-view"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platforms    = { :ios => "10.0" }
  s.source       = { :git => "https://github.com/QiChang2022/react-native-qichang-live-floating-view.git", :tag => "#{s.version}" }


  s.source_files = "ios/**/*.{h,m,mm,swift}"

  s.resources      = "ios/*.gif"

  s.dependency "React-Core"
  s.dependency "Masonry"
  s.dependency "FLAnimatedImage"
end

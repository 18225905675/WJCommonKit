#
#  Be sure to run `pod spec lint CommonKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "WJCommonKit"
  spec.version      = "3.2.1"
  spec.summary      = "通用框架"
  spec.homepage     = "https://github.com/18225905675/WJCommonKit"
 
  spec.license      = "MIT"

  spec.author             = { "RuanYunKeji" => "2391288572@qq.com" }
  
  spec.platform     = :ios, "9.0"

  spec.source       = { :git => "https://github.com/18225905675/WJCommonKit.git", :tag =>spec.version }
  spec.source_files  = "Classes/**/*.{h,m}"
  spec.requires_arc = true
  spec.dependency "Masonry", "~> 1.1.0"
  spec.dependency "WRNavigationBar", "~> 1.2.0"
  spec.dependency "QMUIKit", "~> 3.1.1"


end

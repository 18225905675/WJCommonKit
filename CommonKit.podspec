#
#  Be sure to run `pod spec lint CommonKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|


  spec.name         = "CommonKit"
  spec.version      = "0.0.1"
  spec.summary      = "通用框架"
  spec.homepage     = "https://github.com/18225905675/CommonKit"
 
  spec.license      = "MIT"

  spec.author             = { "RuanYunKeji" => "2391288572@qq.com" }
  
  spec.platform     = :ios, "5.0"

  spec.source       = { :git => "https://github.com/18225905675/CommonKit.git", :tag =>spec.version }
  spec.source_files  = "Classes/*.{h,m}"
  spec.requires_arc = true
  spec.dependency "Masonry", "~> 1.1.0"
end

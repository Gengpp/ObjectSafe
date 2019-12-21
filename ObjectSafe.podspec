#
#  Be sure to run `pod spec lint ObjectSafe.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "ObjectSafe"
  spec.version      = "0.0.1"
  spec.summary      = "备注：iOS开发过程中，某些基础数据结构的一些安全处理方法。"
  spec.description  = "备注：iOS开发过程中，某些基础数据结构的一些安全处理方法。"
  spec.homepage     = "https://github.com/Gengpp/ObjectSafe"
  spec.license      = {
     :type => 'Dual-License',
     :text => <<-LICENSE
        ....
      LICENSE
   }
  spec.author             = { "JackMan-geng" => "963656852@qq.com" }
  spec.ios.deployment_target  = '9.0'
  spec.osx.deployment_target  = '10.10'
  spec.source       = { :git => "https://github.com/Gengpp/ObjectSafe.git", :tag => "#{spec.version}" }
  spec.source_files  = "*{h,m}"
  spec.frameworks = "Foundation",
  spec.requires_arc = true
end

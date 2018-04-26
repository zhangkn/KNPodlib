#
# Be sure to run `pod lib lint KNPodlib.podspec' to ensure this is a
# valid spec before submitting.
#http://guides.cocoapods.org/syntax/podspec.html
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KNPodlib'
  s.version          = '0.1.0'
  s.summary          = 'A short description of KNPodlib.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/zhangkn/KNPodlib'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhangkn' => 'zhangkunnan@qinbaowan.com' }
  s.source           = { :git => 'https://github.com/zhangkn/KNPodlib.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
#类库的源文件将位于Pod/Classes文件夹下
  s.source_files = 'KNPodlib/Classes/**/*'
#  代替了KNStaticBundle.bundle的资源管理方式；资源文件位于Pod/Assets文件夹
   s.resource_bundles = {
     'KNPodlib' => ['KNPodlib/Assets/*.png']
   }
   #指定暴露的头文件的搜索位置
  # s.public_header_files = 'Pod/Classes/**/*.h'
#  指定依赖的SDK中的framework和类库 s.libraries；需要注意，依赖项不仅要包含你自己类库的依赖，还要包括所有第三方类库的依赖；例如ASIHTTPRequest的依赖情况如下：
#s.frameworks = 'MobileCoreServices', 'CFNetwork', 'CoreGraphics' #ASIHTTPRequest的依赖
#s.libraries  = 'z.1' #ASIHTTPRequest的依赖
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

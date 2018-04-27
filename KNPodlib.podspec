#
# Be sure to run `pod lib lint KNPodlib.podspec' to ensure this is a
# valid spec before submitting.
#http://guides.cocoapods.org/syntax/podspec.html
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KNPodlib'
  s.version          = '0.1.3'
  s.summary          = 'KNPodlib Improve feedback interface and customize webview functionality'

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
  s.source           = { :git => 'https://github.com/zhangkn/KNPodlib.git', :tag => s.version.to_s } #将这个Pod版本与Git仓库中相同版本的comit绑定
  #  s.source = { :git => "https://github.com/zhangkn/KNPodlib.git", :commit => "68defea" } #将这个Pod版本与Git仓库中某个commit绑定

  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
#类库的源文件将位于Pod/Classes文件夹下
  s.source_files = 'Classes/**/*'
  #  代替了KNStaticBundle.bundle的资源管理方式；资源文件位于Pod/Assets文件夹;   使用了 s.resource_bundles，之后，会自动创建KNPodlib.bundle
   s.resource_bundles = {
       'KNPodlib' => ['Assets/*.png'] #key 是 bundle 的名称，value 是需要包括的文件的通配 patterns;CocoaPods 官方强烈推荐使用 resource_bundles，因为用 key-value 可以避免相同名称资源的名称冲突We strongly recommend library developers to adopt resource bundles as there can be name collisions using the resources attribute.
#       'OtherResources' => ['MapView/Map/OtherResources/*.png']

   }
   #指定暴露的头文件的搜索位置
   s.public_header_files = 'Classes/PublicInterface/*.h' #“**” 表示匹配所有子目录
   
   ########---- 第三方库的依赖声明--##########
#  指定依赖的SDK中的framework和类库 s.libraries；需要注意，依赖项不仅要包含你自己类库的依赖，还要包括所有第三方类库的依赖；例如ASIHTTPRequest的依赖情况如下：
#s.frameworks = 'MobileCoreServices', 'CFNetwork', 'CoreGraphics' #ASIHTTPRequest的依赖
#s.libraries  = 'z.1' #ASIHTTPRequest的依赖 # 引用静态库：去掉头尾的lib，用“,”分割
# s.frameworks = 'UIKit', 'MapKit' # 引用公有framework : 用”,”分割. 去掉尾部的”.framework”
#引用自己生成的framework: 这个不要省略.framework;
#spec.ios.vendored_frameworks = 'Pod/Assets/*.framework' #用”,”分割 路径从.podspec所在目录为根目录的相对路径
  # s.dependency 'AFNetworking', '~> 2.3'
  # 引用自己生成的.a文件，添加到Pod/Assets文件夹里. Demo的Example文件夹里也需要添加一下, 不然找不到
#  spec.ios.vendored_libraries = 'Pod/Assets/*.a'
#在提交到私有仓库的时候需要加上--use-libraries
end

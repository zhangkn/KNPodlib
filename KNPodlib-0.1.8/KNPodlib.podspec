Pod::Spec.new do |s|
  s.name = "KNPodlib"
  s.version = "0.1.8"
  s.summary = "KNPodlib Improve feedback interface and customize webview functionality"
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"zhangkn"=>"zhangkunnan@qinbaowan.com"}
  s.homepage = "https://github.com/zhangkn/KNPodlib"
  s.description = "TODO: Add long description of the pod here."
  s.source = { :path => '.' }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/KNPodlib.framework'
end

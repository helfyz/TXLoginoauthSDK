Pod::Spec.new do |s|

  s.name                  = 'TXLoginoauthSDK'
  s.version               = '4.0.9'
  s.summary               = 'A Mirror For TXLoginoauthSDK'
  s.homepage              = 'https://wiki.connect.qq.com'
  s.ios.deployment_target = '7.0'
  s.license               = { :type => 'MIT', :file => 'LICENSE' }
  s.author                = { 'helfy' => '562812743@qq.com' }
  s.social_media_url      = 'https://github.com/helfyz'
  s.source                = { :git => 'https://github.com/helfyz/TXLoginoauthSDK.git', :tag => s.version }
  s.resource              = 'TXLoginoauthSDK/*.bundle'
  s.vendored_frameworks   = 'TXLoginoauthSDK/*.framework'
  s.pod_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig  = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.requires_arc          = true
  
  s.subspec 'TYRZUISDK' do |ss|
    s.vendored_frameworks   = 'TXLoginoauthSDK/*.framework'
  end

  s.dependency 'TXLoginoauthSDK/TYRZUISDK'
  
end

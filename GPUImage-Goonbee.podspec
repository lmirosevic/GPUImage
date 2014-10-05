Pod::Spec.new do |s|
  s.name     = 'GPUImage-Goonbee'
  s.version  = '0.1.6.1'
  s.license  = 'BSD'
  s.platform = :ios, '5.0'
  s.summary  = 'Fork of Brad Larson\'s GPUImage'
  s.homepage = 'https://github.com/lmirosevic/GPUImage'
  s.author   = { 'Luka Mirosevic' => 'luka@goonbee.com' }
  s.source   = { :git => 'https://github.com/lmirosevic/GPUImage.git', :tag => "goonbee-#{s.version.to_s}" }

  s.source_files = 'framework/Source/**/*.{h,m}'
  s.resources = 'framework/Resources/*.png'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }

  s.exclude_files = 'framework/Source/Mac/**/*.{h,m}'
  s.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']
end

Pod::Spec.new do |s|
  s.name             = 'HiRealm'
  s.version          = '1.0.5'
  s.summary          = 'Realm module.'
  s.description      = <<-DESC
						Realm module using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiRealm'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiRealm.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '13.0'
  s.frameworks = 'Foundation'
  
  s.source_files = 'HiBase/**/*'
  s.dependency 'HiBase', '~> 1.0'
  s.dependency 'RealmSwift', '~> 10.0'
  
end

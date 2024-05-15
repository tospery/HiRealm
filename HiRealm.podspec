Pod::Spec.new do |s|
  s.name             = 'HiRealm'
  s.version          = '1.0.1'
  s.summary          = 'Realm layer.'
  s.description      = <<-DESC
						Realm layer using Swift.
                       DESC
  s.homepage         = 'https://github.com/tospery/HiRealm'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'YangJianxiang' => 'tospery@gmail.com' }
  s.source           = { :git => 'https://github.com/tospery/HiRealm.git', :tag => s.version.to_s }

  s.requires_arc = true
  s.swift_version = '5.3'
  s.ios.deployment_target = '13.0'
  s.frameworks = 'Foundation'
  
  s.source_files = 'HiRealm/**/*'
  s.dependency 'HiDomain', '~> 1.0'
  s.dependency 'RealmSwift', '~> 10.0'
  
end

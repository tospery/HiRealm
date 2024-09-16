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
  s.ios.deployment_target = '16.0'
  s.frameworks = 'Foundation'
  
  s.subspec 'Core' do |ss|
    ss.source_files = 'HiRealm/Core/**/*'
    ss.dependency 'HiBase', '~> 1.0'
    ss.dependency 'RealmSwift', '~> 10.0'
  end
  
  s.subspec 'RxSwift' do |ss|
    ss.source_files = 'HiRealm/RxSwift/**/*'
  	ss.dependency 'HiRealm/Core'
	ss.dependency 'RxRealm', '~> 5.0'
  end
  
  s.subspec 'Combine' do |ss|
    ss.source_files = 'HiRealm/Combine/**/*'
	ss.frameworks = 'Combine'
  	ss.dependency 'HiRealm/Core'
  end
  
end

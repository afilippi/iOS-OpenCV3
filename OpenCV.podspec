Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = “3.0.0”
  s.summary      = “Opencv 3.0 for iOS”
  s.homepage     = "https://github.com/afilippi/iOS-OpenCV3”
  s.author       = "afilippi, opencv.org"
  s.source       = { 
    :git => "https://github.com/afilippi/iOS-OpenCV3.git", 
    :tag => "0.0.1"
  }

  s.platform     = :ios
  s.preserve_paths = 'opencv2.framework'
  s.source_files = 'opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  s.public_header_files = 'opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  s.header_dir = 'opencv2'
  s.header_mappings_dir = 'opencv2.framework/Versions/A/Headers/'
  
  s.xcconfig = {'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/OpenCV', 'OTHER_LDFLAGS' => '-all_load'}
end

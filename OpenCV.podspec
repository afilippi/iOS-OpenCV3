Pod::Spec.new do |s|
  s.name         = "OpenCV"
  s.version      = "3.0.0"
  s.summary      = "OpenCV 3.0 Framework for iOS, with coacoapod support"
  s.homepage     = "https://github.com/afilippi/iOS-OpenCV3"
  s.description  = <<-DESC
    OpenCV 3.0, compiled for iOS
    Homepage:    http://opencv.org
    Online docs: http://docs.opencv.org
              DESC
                  
  s.license      = { :type => 'BSD', :file => 'LICENSE',
    :text => <<-LICENSE
By downloading, copying, installing or using the software you agree to this license.
If you do not agree to this license, do not download, install, copy or use the software.
License Agreement
For Open Source Computer Vision Library
(3-clause BSD License)
Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
Neither the names of the copyright holders nor the names of the contributors may be used to endorse or promote products derived from this software without specific prior written permission.
This software is provided by the copyright holders and contributors “as is” and any express or implied warranties, including, but not limited to, the implied warranties of merchantability and fitness for a particular purpose are disclaimed. In no event shall copyright holders or contributors be liable for any direct, indirect, incidental, special, exemplary, or consequential damages (including, but not limited to, procurement of substitute goods or services; loss of use, data, or profits; or business interruption) however caused and on any theory of liability, whether in contract, strict liability, or tort (including negligence or otherwise) arising in any way out of
the use of this software, even if advised of the possibility of such damage.
    LICENSE
    }
  s.author       = "afilippi, opencv.org"

  s.source       = { 
    :git => "https://github.com/afilippi/iOS-OpenCV3.git", 
    :tag => "#{s.version}"
  }
  s.platform     = :ios
  s.preserve_paths = 'opencv2.framework'
  s.vendored_frameworks = 'opencv2.framework'
  s.public_header_files = 'opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}'
  s.header_dir = 'opencv2'
  s.header_mappings_dir = 'opencv2.framework/Versions/A/Headers/'
  s.libraries    = 'c++'
  s.frameworks = 'opencv2'
  s.xcconfig = {'FRAMEWORK_SEARCH_PATHS' => '$(inherited) $(PODS_ROOT)/OpenCV'}
end

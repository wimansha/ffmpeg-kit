Pod::Spec.new do |s|
  s.name         = 'ffmpeg_kit_flutter'
  s.version      = '6.0.3'
  s.summary      = 'FFmpegKit iOS HTTPS Package'
  s.description  = 'A statically linked FFmpegKit iOS package with HTTPS support.'
  s.homepage     = 'https://github.com/hrithikmtorana/ffmpeg-kit'
  s.license      = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.author       = { 'ARTHENICA' => 'open-source@arthenica.com' }

  s.platform     = :ios, '12.0'
  s.requires_arc = true
  s.static_framework = true

  # This line is changed to use your GitHub fork tag archive
  s.source       = { :http => 'https://github.com/hrithikmtorana/ffmpeg-kit/archive/refs/tags/v6.0.3.zip' }

  # Source files relative to the unzipped directory structure from GitHub archive
  s.source_files = 'ffmpeg-kit-6.0.3/ios/**/*.h', 'ffmpeg-kit-6.0.3/ios/**/*.m', 'ffmpeg-kit-6.0.3/ios/**/*.mm'

  # Public headers if needed
  s.public_header_files = 'ffmpeg-kit-6.0.3/ios/**/*.h'

  # Dependencies, adjust if needed
  s.frameworks = ['AVFoundation', 'CoreMedia', 'VideoToolbox', 'UIKit', 'Foundation']

  # If you use vendored_frameworks instead, like with precompiled binaries, include it like this:
  # s.vendored_frameworks = 'ffmpeg-kit-6.0.3/ios/FFmpegKit.xcframework'

  # Additional compiler flags (optional)
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end

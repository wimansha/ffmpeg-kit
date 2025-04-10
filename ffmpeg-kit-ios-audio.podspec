Pod::Spec.new do |s|
  s.name             = 'ffmpeg-kit-ios-audio'
  s.version          = '6.0.LTS'
  s.summary          = 'FFmpeg Kit iOS Audio Shared Framework'
  s.description      = 'Includes FFmpeg with lame, libilbc, libvorbis, opencore-amr, opus, shine, soxr, speex, twolame and vo-amrwbenc libraries enabled.'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.authors          = { 'ARTHENICA' => 'open-source@arthenica.com' }
  s.license          = { :type => 'LGPL-3.0', :file => 'ffmpegkit.framework/LICENSE' }
  s.platform         = :ios, '10'
  s.requires_arc     = true
  s.libraries        = 'z', 'bz2', 'c++', 'iconv'

  s.source           = { :http => 'https://github.com/arthenica/ffmpeg-kit/releases/download/v6.0.LTS/ffmpeg-kit-audio-6.0.LTS-ios-framework.zip' }
  
  s.ios.frameworks   = 'AudioToolbox', 'CoreMedia'
  s.ios.vendored_frameworks = 'ffmpegkit.framework', 'libavcodec.framework', 'libavdevice.framework', 'libavfilter.framework', 'libavformat.framework', 'libavutil.framework', 'libswresample.framework', 'libswscale.framework'

  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
  s.deprecated = true
end

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_clipboard_manager_web'
  s.version          = '0.0.1'
  s.summary          = 'No-op implementation of flutter_clipboard_manager_web web plugin to avoid build issues on iOS'
  s.description      = <<-DESC
temp fake url_launcher_web plugin
                       DESC
  s.homepage         = 'https://github.com/simpleclub/flutter_clipboard_manager/tree/master/flutter_clipboard_manager_web'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'creativecreatorormaybenot' => 'creativecreatorormaybenot@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.ios.deployment_target = '8.0'
end

#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint notification_cleaner.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'notification_cleaner'
  s.version          = '0.0.5'
  s.summary          = 'A Flutter plugin to clear all notifications on Android and iOS.'
  s.description      = <<-DESC
A Flutter plugin to clear all notifications on Android and iOS, supporting modern implementations and proper permission handling. This is a maintained fork of clear_all_notifications.
                       DESC
  s.homepage         = 'https://github.com/mr-gami001/notification_cleaner'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'mr-gami001' => 'email@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Sources/notification_cleaner/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '12.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }

  s.static_framework = true
  s.swift_version = '5.0'
end

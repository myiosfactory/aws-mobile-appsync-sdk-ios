Pod::Spec.new do |s|
  s.name         = 'AWSAppSync'
  s.version      = '3.6.4'
  s.author       = 'AWS'
  s.homepage     = 'http://aws.amazon.com/mobile/sdk'
  s.license      = { :type => 'Amazon Software License', :file => 'LICENSE' }
  s.summary      = "iOS client to access AWSAppSync backend."
  s.source       = { :git => 'https://github.com/awslabs/aws-mobile-appsync-sdk-ios.git',
                     :tag => s.version }
  s.requires_arc = true
  s.ios.deployment_target = '9.0'
  s.swift_version = '5.5.2'

  s.dependency 'AWSCore', '~> 2.34.0'
  s.dependency 'SQLite.swift', '~> 0.13.2'
  s.dependency 'AppSyncRealTimeClient', '~> 3.1'

  s.source_files = 'AWSAppSyncClient/AWSAppSync.h', 'AWSAppSyncClient/*.swift', 'AWSAppSyncClient/Internal/**/*.{h,m,swift}', 'AWSAppSyncClient/Apollo/Sources/Apollo/*.swift'
  s.public_header_files = ['AWSAppSyncClient/AWSAppSync.h', 'AWSAppSyncClient/AWSAppSync-Swift.h', 'AWSAppSyncClient/Internal/AppSyncLogHelper.h']
end

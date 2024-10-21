Pod::Spec.new do |s|
  s.name = 'CybridApiIdpSwift'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '0.121.29'
  s.source = { :git => "https://github.com/Cybrid-app/cybrid-api-id-swift.git", :tag => "v#{s.version}" }
  s.authors = 'Cybrid Technology Inc.'
  s.license = { :type => "Apache-2.0", :file => "LICENSE"}
  s.homepage = 'https://github.com/Cybrid-app/cybrid-api-id-swift'
  s.summary = 'Cybrid iOS Identity API'
  s.description = 'Cybrid Id API for Swift'
  s.source_files = 'CybridApiIdpSwift/APIClient/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
end

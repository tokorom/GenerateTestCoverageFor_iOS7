Pod::Spec.new do |s|
  s.name           = "GenerateTestCoverageFor_iOS7"
  s.version        = "0.0.1"
  s.summary        = "Support to get the test coverage in iOS7."
  s.homepage       = "https://github.com/tokorom/GenerateTestCoverageFor_iOS7"
  s.license        = 'MIT'
  s.author         = { "tokorom" => "tokorom@gmail.com" }
  s.source         = { :git => "https://github.com/tokorom/GenerateTestCoverageFor_iOS7.git", :tag => "0.0.1" }
  s.source_files   = 'GenerateTestCoverageFor_iOS7/*'
  s.platform = :ios
  s.framework      = 'XCTest', 'SenTestingKit'
  s.requires_arc   = true
end

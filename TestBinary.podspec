Pod::Spec.new do |s|
  s.name                        = "TestBinary"
  s.version                     = "0.0.1"
  s.license                     = { :type => "BSD", :file => "Carthage/LICENSE" }
  s.summary                     = "Test"
  s.homepage                    = "https://github.com/Ogerets/test-binary-x"
  s.authors                     = { "Ogerets" => "https://github.com/Ogerets" }
  s.source                      = { :http => "https://github.com/Ogerets/test-binary-x/releases/download/v0.0.1/TestBinary.xcframework.zip" }
  s.ios.deployment_target       = "9.0"
  s.osx.deployment_target       = "10.9"
  s.tvos.deployment_target      = "9.0"
  s.watchos.deployment_target   = "2.0"

  s.subspec 'Common' do |sp|
    sp.vendored_frameworks = "Carthage/VSCCommon.xcframework"
  end

  s.subspec 'Foundation' do |sp|
    sp.vendored_frameworks = "Carthage/VSCFoundation.xcframework"
  end

  s.subspec 'Pythia' do |sp|
    sp.vendored_frameworks = "Carthage/VSCPythia.xcframework"
  end

  s.subspec 'Ratchet' do |sp|
    sp.vendored_frameworks = "Carthage/VSCRatchet.xcframework"
  end
end

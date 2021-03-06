podspec = Pod::Spec.new do |spec|
  spec.name = 'YogaKit'
  spec.version = '1.9.0'
  spec.license =  { :type => 'MIT', :file => "LICENSE" }
  spec.homepage = 'https://facebook.github.io/yoga/'
  spec.documentation_url = 'https://facebook.github.io/yoga/docs/api/yogakit/'

  spec.summary = 'Yoga is a cross-platform layout engine which implements Flexbox.'
  spec.description = 'Yoga is a cross-platform layout engine enabling maximum collaboration within your team by implementing an API many designers are familiar with, and opening it up to developers across different platforms.'

  spec.authors = 'Facebook'
  spec.source = {
    :git => 'https://github.com/facebook/yoga.git',
    :tag => spec.version.to_s,
  }

  spec.platform = :ios
  spec.ios.deployment_target = '8.0'
  spec.ios.frameworks = 'UIKit'
  spec.default_subspec = "Core"  
  spec.dependency 'Yoga', '~> 1.9'

  spec.subspec "Core" do |ss|
    ss.source_files = 'YogaKit/Source/*.{h,m}'
    ss.public_header_files = 'YogaKit/Source/{YGLayout,UIView+Yoga}.h'
    ss.private_header_files = 'YogaKit/Source/YGLayout+Private.h'
  end

  spec.subspec 'SwiftExtension' do |ss|
    ss.source_files = 'YogaKit/Source/*.{swift}'    
  end  

end

# See https://github.com/facebook/yoga/pull/366
podspec.attributes_hash["readme"] = "YogaKit/README.md"
podspec

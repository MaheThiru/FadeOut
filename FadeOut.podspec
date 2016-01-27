#
# Be sure to run `pod lib lint FadeOut.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FadeOut"
  s.version          = "0.1.10"
  s.summary          = "Fadeout Description to use FadOut UIView"

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.homepage         = "https://github.com/MaheThiru/FadeOut"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "THIRUVADISAMY_P" => "ptsamy92@gmail.com" }
  s.source           = { :git => "https://github.com/MaheThiru/FadeOut.git", :tag => s.version.to_s, :submodules => true }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FadeOut' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AFNetworking', '~> 2.3'

    s.subspec 'AlertCheck' do |ss|
        ss.source_files = 'Pod/Classes/AlertViewController.{h,m}'
        ss.public_header_files = 'Pod/Classes/AlertViewController.h'
    end

    s.subspec 'FadeOutCheck' do |ss|
        ss.source_files = 'Pod/Classes/PodViewController.{h,m}'
        ss.public_header_files = 'Pod/Classes/PodViewController.h'
    end

end

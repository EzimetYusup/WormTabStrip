
Pod::Spec.new do |s|
s.name             = "WormTabStrip"
s.version          = "1.0.2"
s.summary          = "A ViewPager For iOS in Swift"
s.description      = "Worm TabStrip Android ViewPager for iOS written in Swift, built from other view controllers placed inside a scroll view"
s.homepage         = "https://github.com/EzimetYusup/WormTabStrip"
s.license          = 'MIT'
s.author           = { "EzimetYusup" => "ezimet.yusup@gmail.com" }
s.platform = :ios, '8.0'
s.source           = { :git => "https://github.com/EzimetYusup/WormTabStrip.git", :tag => s.version.to_s }
s.source_files = 'WormTabStrip/WormTabStrip/WormLib/*.swift'
end

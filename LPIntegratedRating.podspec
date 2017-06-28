
Pod::Spec.new do |s|

  s.name         = "LPIntegratedRating"
  s.version      = "0.1.0"
  s.summary      = "An integrated rating view for iOS"

  s.description  = <<-DESC
  Integrated rating view for table views and collection views on iOS.
                   DESC

  s.homepage     = "https://github.com/luispadron/LPIntegratedRating"
  #s.screenshots  = "https://raw.githubusercontent.com/luispadron/UICircularProgressRing/master/.github/banner.png", #"https://raw.githubusercontent.com/luispadron/UICircularProgressRing/master/.github/demo.gif"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Luis Padron" => "luispadronedu@gmail.com" }
  s.social_media_url   = "http://luispadron.com"

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/LPIntegratedRating", :tag => "v#{s.version}" }

  s.source_files  = "LPIntegratedRating", "LPIntegratedRating/**/*.{h,m}"
end

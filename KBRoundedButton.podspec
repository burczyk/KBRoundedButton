Pod::Spec.new do |s|
  s.name         = "KBRoundedButton"
  s.version      = "1.0.0"
  s.summary      = "Create beautiful rounded rect button with dynamic colors and activity indicator completely in Interface Builder"

  s.description  = <<-DESC
                   KBRoundedButton is a subclass of UIButton that allows developers to create beutiful flat buttons that change colors in different states and are configurable from Interface Builder. KBRoundedButton can also display UIActivityIndicatorView when it's state is set to working so it can be easily used in places where async tasks are started.
                   DESC

  s.homepage     = "https://github.com/burczyk/KBRoundedButton"

  s.screenshots  = "https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/screenshot1.png", "https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/screenshot2.png", "https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/screenshot3.png"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Kamil Burczyk" => "kamil.burczyk@gmail.com" }
  s.social_media_url   = "http://twitter.com/KamilBurczyk"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/burczyk/KBRoundedButton.git", :tag => "1.0.0" }
  s.source_files  = "KBRoundedButtonExample", "KBRoundedButton/**/*.{h,m}"

  s.frameworks = "UIKit", "CoreGraphics"

  s.requires_arc = true

end

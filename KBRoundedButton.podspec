Pod::Spec.new do |s|
  s.name         = "KBRoundedButton"
  s.version      = "1.0.0"
  s.summary      = "Create beautiful rounded rect button with dynamic colors and activity indicator completly in Interface Builder"

  s.description  = <<-DESC
                   A longer description of KBRoundedButton in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/burczyk/KBRoundedButton"

  s.screenshots  = "https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/screenshot1.png", "https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/screenshot2.png", "https://raw.githubusercontent.com/burczyk/KBRoundedButton/master/assets/screenshot3.png"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Kamil Burczyk" => "kamil.burczyk@gmail.com" }
  s.social_media_url   = "http://twitter.com/KamilBurczyk"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/burczyk/KBRoundedButton.git", :commit => "11db90c39db78c0a65b117adb6829208dbd7ce81" }
  s.source_files  = "KBRoundedButtonExample", "KBRoundedButton/**/*.{h,m}"

  s.frameworks = "UIKit", "CoreGraphics"

  s.requires_arc = true

end

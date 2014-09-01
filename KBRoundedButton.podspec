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
  s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Kamil Burczyk" => "kamil.burczyk@gmail.com" }
  s.social_media_url   = "http://twitter.com/KamilBurczyk"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/burczyk/KBRoundedButton.git", :commit => "f0270c065e53705aeca62210117301bab29c41c1" }
  s.source_files  = "KBRoundedButton", "KBRoundedButton/**/*.{h,m}"

  s.frameworks = "UIKit", "CoreGraphics"

  s.requires_arc = true

end

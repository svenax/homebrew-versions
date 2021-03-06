cask 'webstorm-eap' do
  version '2016.3.2 EAP,163.9166.8'
  sha256 'b22e658a8a8df9cbdeac77bd176f4f51e2ad3b48eb3d96a45fa49892ae520d91'

  url "https://download-cf.jetbrains.com/webstorm/WebStorm-EAP-#{version.after_comma}.dmg"
  name 'WebStorm EAP'
  homepage 'https://confluence.jetbrains.com/display/WI/WebStorm+EAP'

  conflicts_with cask: 'webstorm'

  app "WebStorm #{version.before_comma}.app"

  uninstall delete: '/usr/local/bin/wstorm'

  zap delete: [
                "~/Library/Preferences/WebStorm#{version.before_comma}",
                "~/Library/Application Support/WebStorm#{version.before_comma}",
                "~/Library/Caches/WebStorm#{version.before_comma}",
                "~/Library/Logs/WebStorm#{version.before_comma}",
              ]
end

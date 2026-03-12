cask "commandeck" do
  version "0.1.2"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"

  url "https://github.com/Priyans-hu/commandeck/releases/download/v#{version}/CommanDeck_#{version}_aarch64.dmg"
  name "CommanDeck"
  desc "Unified work dashboard — GitHub PRs, Linear tickets, AI sessions"
  homepage "https://github.com/Priyans-hu/commandeck"

  depends_on macos: ">= :monterey"

  app "CommanDeck.app"

  zap trash: [
    "~/Library/Application Support/com.commandeck.app",
    "~/Library/Caches/com.commandeck.app",
    "~/Library/Preferences/com.commandeck.app.plist",
  ]
end

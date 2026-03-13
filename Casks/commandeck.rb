cask "commandeck" do
  version "0.2.0"
  sha256 "d434d7f3341650e152f0469b79defa08a7bf352f8141e91eb8a2eecd23875c59"

  url "https://github.com/Priyans-hu/commandeck/releases/download/v#{version}/CommanDeck_#{version}_aarch64.dmg"
  name "CommanDeck"
  desc "Unified work dashboard — GitHub PRs, Linear tickets, AI sessions"
  homepage "https://github.com/Priyans-hu/commandeck"

  depends_on macos: ">= :monterey"

  app "CommanDeck.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CommanDeck.app"], sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.commandeck.app",
    "~/Library/Caches/com.commandeck.app",
    "~/Library/Preferences/com.commandeck.app.plist",
  ]
end


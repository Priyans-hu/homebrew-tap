cask "commandeck" do
  version "0.2.3"
  sha256 "4f57cac0624355a1b84bd7ed73a15dd42f3fc9e985c6fd32eb6121dee53a9369"

  url "https://github.com/Priyans-hu/commandeck/releases/download/v#{version}/CommanDeck_#{version}_aarch64.dmg"
  name "CommanDeck"
  desc "Unified work dashboard — GitHub PRs, Linear tickets, AI sessions"
  homepage "https://github.com/Priyans-hu/commandeck"

  depends_on macos: ">= :monterey"

  app "CommanDeck.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/CommanDeck.app"], sudo: false
    system_command "/usr/bin/codesign", args: ["--force", "--deep", "-s", "-", "#{appdir}/CommanDeck.app"], sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.commandeck.app",
    "~/Library/Caches/com.commandeck.app",
    "~/Library/Preferences/com.commandeck.app.plist",
  ]
end


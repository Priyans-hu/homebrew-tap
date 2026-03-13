cask "commandeck" do
  version "0.2.2"
  sha256 "0e7c55836ab7c55866a31c9210f825dcab10b9383ced573cf9a852cdc3363ce4"

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


cask "tokenmeter" do
  version "0.2.0"
  sha256 "a7e87ab922d9e872aed073352b43168ea27aa3a280f8f7b03cf8dae228c8bd6e"

  url "https://github.com/Priyans-hu/tokenmeter/releases/download/v#{version}/TokenMeter-v#{version}-macos-aarch64.zip"
  name "TokenMeter"
  desc "macOS menu bar app for Claude Code token usage visualization"
  homepage "https://github.com/Priyans-hu/tokenmeter"

  app "TokenMeter.app"

  zap trash: [
    "~/Library/Application Support/com.priyanshugarg.tokenmeter",
  ]
end

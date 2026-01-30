cask "tokenmeter" do
  version "0.3.1"
  sha256 "309c9e403595bd291be36cc190b68ef8de75b66a0f5dd48ebde8b7e2ec5b8a07"

  url "https://github.com/Priyans-hu/tokenmeter/releases/download/v0.3.1/TokenMeter-v0.3.1-macos-aarch64.zip"
  name "TokenMeter"
  desc "macOS menu bar app for tracking Claude Code usage, rate limits, and costs"
  homepage "https://github.com/Priyans-hu/tokenmeter"

  depends_on macos: ">= :sonoma"

  app "TokenMeter.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-cr", "#{appdir}/TokenMeter.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/com.priyanshugarg.tokenmeter",
  ]
end

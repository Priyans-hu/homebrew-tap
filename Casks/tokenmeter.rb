cask "tokenmeter" do
  version "0.4.0"
  sha256 "f67f8e6ef1129f177d0aa85f5ee8498d8ab2039805ee46668e907ede18375812"

  url "https://github.com/Priyans-hu/tokenmeter/releases/download/v0.4.0/TokenMeter-v0.4.0-macos-aarch64.zip"
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

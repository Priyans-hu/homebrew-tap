cask "tokenmeter" do
  version "0.3.0"
  sha256 "99f7cbb1db9340a45fdd84bf1502d91ad16213c5a8ef7a1bcfb69e179520a342"

  url "https://github.com/Priyans-hu/tokenmeter/releases/download/v#{version}/TokenMeter-v#{version}-macos-aarch64.zip"
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

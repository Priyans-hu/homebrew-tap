class CmdkEngine < Formula
  desc "Smart command palette engine — route scanner and config generator"
  homepage "https://github.com/Priyans-hu/cmdk-engine"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/cmdk-engine/releases/download/v0.6.0/cmdk-engine-darwin-arm64"
      sha256 "9d7e9d8c5fc43fd997b55986a28113c0549bfe894c226cefb19bed777ee8742b"
    else
      url "https://github.com/Priyans-hu/cmdk-engine/releases/download/v0.6.0/cmdk-engine-darwin-x64"
      sha256 "285c474df6be3a4d442f43c2facb812e6f666fc9bec3c2bb81cb25ca6a163982"
    end
  end

  on_linux do
    url "https://github.com/Priyans-hu/cmdk-engine/releases/download/v0.6.0/cmdk-engine-linux-x64"
    sha256 "a1e3f36bf6a81c52916c8959adfd4d329ace78dd62a52d1bf194a9848dee3029"
  end

  def install
    binary = Dir["cmdk-engine-*"].first
    bin.install binary => "cmdk-engine"
  end

  test do
    assert_match "cmdk-engine", shell_output("#{bin}/cmdk-engine --help")
  end
end

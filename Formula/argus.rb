class Argus < Formula
  desc "Auto-generate AI context files from your codebase"
  homepage "https://github.com/Priyans-hu/argus"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_darwin_arm64.tar.gz"
      sha256 "9e87f2bedc18a575787eda23dd4fbd09f7d20ff13b45ab2e0489b1786e51f2c9"
    else
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_darwin_amd64.tar.gz"
      sha256 "3df51f53a94cf78b90a009733ad9b138dfb834d8226984eccb1e35850f8e2a4c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_linux_arm64.tar.gz"
      sha256 "a6bfc5bb056d81e04cf224f95bb3f73cda0f6affb1b334132bb99504f146d45b"
    else
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_linux_amd64.tar.gz"
      sha256 "3d25c2b03a9e94919833865040e66e5c7baafa25a9a7b2a1ea7f6c250ca45d44"
    end
  end

  def install
    bin.install "argus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/argus --version")
  end
end

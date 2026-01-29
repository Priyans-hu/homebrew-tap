class Argus < Formula
  desc "Auto-generate AI context files from your codebase"
  homepage "https://github.com/Priyans-hu/argus"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_darwin_arm64.tar.gz"
      sha256 "69aa4bec0140b1f9d79fe8c64887d6cb7fad228cd3fc0e1420269e7b35f5bb1d"
    else
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_darwin_amd64.tar.gz"
      sha256 "e42b1b85162062beca777fd77d2acd783f798d1ab5e042b3c15771a87b3b078c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_linux_arm64.tar.gz"
      sha256 "ab88875df36543a9c920a181133a4d35ab324d1a3e0142f97bcc8c801aef4431"
    else
      url "https://github.com/Priyans-hu/argus/releases/download/v#{version}/argus_#{version}_linux_amd64.tar.gz"
      sha256 "36081002dded840c27306ec6154e78858d36f062c8ac48619f59af10a1bd1438"
    end
  end

  def install
    bin.install "argus"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/argus --version")
  end
end

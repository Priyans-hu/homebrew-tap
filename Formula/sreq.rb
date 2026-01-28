class Sreq < Formula
  desc "Service-aware API client with automatic credential resolution"
  homepage "https://github.com/Priyans-hu/sreq"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/sreq/releases/download/v#{version}/sreq_#{version}_darwin_arm64.tar.gz"
      sha256 "ad97bdc1c7668b0cb60efd70e3eed0f48eee8b56dbacc9ef40ddb016cd98b294"
    else
      url "https://github.com/Priyans-hu/sreq/releases/download/v#{version}/sreq_#{version}_darwin_amd64.tar.gz"
      sha256 "80ff350ace7f87137db5340ec1b9ef92a72add3e34b317cfaa39d1e694089f4e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Priyans-hu/sreq/releases/download/v#{version}/sreq_#{version}_linux_arm64.tar.gz"
      sha256 "0aa45efc66b038237cfb21b898b7da841818b7af0de2b16e6fd45779a39b95de"
    else
      url "https://github.com/Priyans-hu/sreq/releases/download/v#{version}/sreq_#{version}_linux_amd64.tar.gz"
      sha256 "7174b6d868dc5f2e96c0b39c45903bcd0ce32264e24803909f7688255e51e6e3"
    end
  end

  def install
    bin.install "sreq"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sreq --version")
  end
end

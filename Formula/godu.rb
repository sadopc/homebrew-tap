class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-darwin-arm64"
      sha256 "69d05f572e302e07ecb64782176a7d4d96199bcae8a6213575b8c7ed80a9a93c"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-darwin-amd64"
      sha256 "963cc92e28e9d93fd629e8c27ee6fbfa930c6972575638f8a325521f7eedb282"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-linux-arm64"
      sha256 "6a341911bbf7de283e6c5ec87d3449a09e181b68a1b78f80f0754c05b0e1d9e4"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-linux-amd64"
      sha256 "e0a99e85e9a87dc7000138817a416a2cdf4b1d8d3bb1c7392caa8cd7868ff7fc"
    end
  end

  def install
    binary = Dir["godu-*"].first || "godu"
    bin.install binary => "godu"
  end

  test do
    assert_match "godu", shell_output("#{bin}/godu --version")
  end
end

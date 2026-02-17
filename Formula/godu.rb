class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.8/godu-darwin-arm64"
      sha256 "c967ff8c7bb616d3e62dcff7ab0952b634d161859062355d4988c6df14296208"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.8/godu-darwin-amd64"
      sha256 "4ac7c484452ff1cd51c30bffc77f8d746e3d7e1767b9959742ea9ade18fc148b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.8/godu-linux-arm64"
      sha256 "9d456fe9fb3f5e2edd4ee8bd168455ea50a61248ee541bfadbd298170eb3474b"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.8/godu-linux-amd64"
      sha256 "95c806ea0ca198b96bbc83ea48189456931aa85e62084b1a805d034f1bd3ed8c"
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

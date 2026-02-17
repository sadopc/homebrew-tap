class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.7/godu-darwin-arm64"
      sha256 "8718762c237618797ce1a921e5f94aa13485e6c90d10d02a53566f02a5c4a04c"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.7/godu-darwin-amd64"
      sha256 "b19d9c6ac36c7fb2e85a9b3fa5d0fac0d4f933f924654168faa5471bcd9154dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.7/godu-linux-arm64"
      sha256 "5e651e38dead7087cce4a3395c03c53a34dd195084a5a961da3c7ac9c6fe12d2"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.7/godu-linux-amd64"
      sha256 "41a208f05d3b7c1ff3d8ce506b1c834f143b216a0258507622ebd103c20fb600"
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

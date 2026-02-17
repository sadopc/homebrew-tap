class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.3.0/godu-darwin-arm64"
      sha256 "562ea639f9eb42807fc7fcd9fb48f3b9d6a6a6a225feadeef41e71b46b7aa422"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.3.0/godu-darwin-amd64"
      sha256 "596ff020faeecb9d103ce25644a9635873ad55dc4e6ca2521a9ccb76e917c759"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.3.0/godu-linux-arm64"
      sha256 "31c4e3e54b1ab9565465eae6df3065643d905a073d09eadaeaab6f87ecfd904c"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.3.0/godu-linux-amd64"
      sha256 "639b255376920abaef945c2e3805de3eca8c5c87160aa2f2257023dea09cb17d"
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

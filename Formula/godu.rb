class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.1.0/godu-darwin-arm64"
      sha256 "1c4dd3b60f9b3ab2c32ddff1aba07c28ce3896250e2c8f1f0bb93a19adfa7e64"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.1.0/godu-darwin-amd64"
      sha256 "b06c7aeb0a19348216428d57e0446ec4161dc5ce302c26c111181de1e766e60d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.1.0/godu-linux-arm64"
      sha256 "9a925548a33cf18d1c2687847631a2756ee6eed4316526448915d8348c59bcff"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.1.0/godu-linux-amd64"
      sha256 "e64f65c4b25f68ec7589a2cc00ee67af8c122e3c9272458dde54d027fae0ef9a"
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

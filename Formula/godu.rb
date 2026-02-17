class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.3/godu-darwin-arm64"
      sha256 "9632f06025e3f3ec52cf0f6032ee640c57bda871f67100bfcc9b041ac1cc17ec"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.3/godu-darwin-amd64"
      sha256 "a663ada27b525064806c8e16765493b4a96cc21f55c8f31765c9ead2bb8d4e1a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.3/godu-linux-arm64"
      sha256 "6321bcb2fe586fb08cc75ad8a215f6763b838991b4aa9f8151c10de1c6bfe9ea"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.3/godu-linux-amd64"
      sha256 "68f91d330dc0d02615ae48f2a0b92c8217397b396a9e51c24bff0bfd109d9edf"
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

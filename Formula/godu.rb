class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-darwin-arm64"
      sha256 "c7bf89738c8cb6aa2df66818dbe5dea4ab6534d76497e5679074f9d69a2658cc"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-darwin-amd64"
      sha256 "cca930355d14d1eda6b8972dd23e667ed18b433bd92469fd752401939ab52c97"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-linux-arm64"
      sha256 "b1cee7fde903d449f61c6fccb808ea500dd79a69878e2af5e728a8748027eb34"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.0/godu-linux-amd64"
      sha256 "b39372cc2d0dcf5036a880af596dca8a6d2303f02f6ba53f6e5f0cd1539871bb"
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

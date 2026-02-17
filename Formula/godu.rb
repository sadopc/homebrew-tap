class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.1/godu-darwin-arm64"
      sha256 "375fa99f2df77e453b56d60e8c723bebc0ad85e2476813af1be620150decc3c0"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.1/godu-darwin-amd64"
      sha256 "d2a41accc959b3f83a1f377c4d4cc3224ed765b6676ea46d1adf3f36f7e06c1f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.1/godu-linux-arm64"
      sha256 "b731c46f15be77ebd56ef1e316f16f5151197b6cd7d7ae5d4b2f73a58f5505fb"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.1/godu-linux-amd64"
      sha256 "92ace6184cc1bab392bda1ca5c417bace351031d9db10bbd85064207b5b849d5"
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

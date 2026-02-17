class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.5/godu-darwin-arm64"
      sha256 "1b731d6e0c5a691f40c5e7be029af6cddfccbacc802db514770ac653cc0c1320"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.5/godu-darwin-amd64"
      sha256 "9c21a9f0d52f82ac9c4c4cc483517752a4c4de4bcc6ced480c8a2ee3215d4845"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.5/godu-linux-arm64"
      sha256 "2cf17f45d4bdfaa73a82b2e3402186be7047ada97ea8bc7b1624b8cc7dc659dc"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.5/godu-linux-amd64"
      sha256 "1b497a59dfa990accec6d45ecf2b86f0ab3ba02a1717c8a4fec306a91815d623"
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

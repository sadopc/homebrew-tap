class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.6/godu-darwin-arm64"
      sha256 "64ec9bad69523d2dd9672f70dc45d4268ec59ea0e8dcb8b110b391c409f15042"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.6/godu-darwin-amd64"
      sha256 "f65c19ef692f9499e91de40c5c83436e49b1de2f3fd3de4ae41b0bcc35ae4a46"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.6/godu-linux-arm64"
      sha256 "e433465c255b82ad89c20b38278ed362963a3d565042514d6ca74d8ca8a84028"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.6/godu-linux-amd64"
      sha256 "036816d2ff1ad36a31511731a532abad4086dd05c53303e7d5d0e424f3f351df"
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

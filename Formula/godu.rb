class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.4/godu-darwin-arm64"
      sha256 "94dde80ebf79b55027abe0405f4cac31d115e0bfd8c05df0a21d96e4ab36f2cb"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.4/godu-darwin-amd64"
      sha256 "73a2628564781cde6865d7930d6c844722fe03dcfc8645910746eb80975138b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.4/godu-linux-arm64"
      sha256 "27fa1e0e8aa939623cf6fa322bd248ce6ba56c4ec278e791f4c87ed60f5563fe"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.4/godu-linux-amd64"
      sha256 "bbe6cd9c33b6dec4856971c94c23101fc1a2d650c07a2e83ebf3488be6410c11"
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

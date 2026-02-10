class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.0.0/godu-darwin-arm64"
      sha256 "5caa9c5b555aec77faa35a1282e5db66cb7e7f3b19c3b3e5eb018dd48f6d03a1"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.0.0/godu-darwin-amd64"
      sha256 "305e7679366ee1f48cf53aa91241fb16fc73fecb892b93f30e86b4661e6327c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.0.0/godu-linux-arm64"
      sha256 "513ac79c11ea48e83b8fc249e20f7dcbfc7087519e9bfda48fe07f0488125fff"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.0.0/godu-linux-amd64"
      sha256 "9fe70fc90b442c32865698fd9c6a613429dd268195f5f6e61f79d9ff12ab7c82"
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

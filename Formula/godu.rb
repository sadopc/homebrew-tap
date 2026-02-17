class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.2/godu-darwin-arm64"
      sha256 "cad4b73f0273bc1b8cf5a539471881c41b6f19ee492849409dd408d3d16c2be6"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.2/godu-darwin-amd64"
      sha256 "13b21b65624e9da114f53949ac18ccd90b622dd9261dd396b50d3226325f38c1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.2/godu-linux-arm64"
      sha256 "bdcac8ce4d770666ab0810410988d9599804ac38b2f459993a393d617c31e775"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.2/godu-linux-amd64"
      sha256 "0b74764effc6f399572351649e9871d3fa5c231a3f53587f6fc8c7e89ae53b7e"
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

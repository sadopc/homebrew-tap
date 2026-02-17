class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.3.1/godu-darwin-arm64"
      sha256 "a4bf5153644bbb2afdf0936c3802ba3867477c62249c8fdd50e2ce4ee46d37b4"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.3.1/godu-darwin-amd64"
      sha256 "e6dfd93b835f651a1baa9ea8a8126548ec261fab1a9792cd2f9ef5ba483d749d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.3.1/godu-linux-arm64"
      sha256 "52e73e517ca707cadbd81944135c0d8b67997322e31772965201e67e054a7861"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.3.1/godu-linux-amd64"
      sha256 "8a3c82e9ff2d8c256cd5f1a7104a1b890ce8254b72356a6003e4cb8833fedf2f"
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

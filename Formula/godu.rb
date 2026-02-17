class Godu < Formula
  desc "Fast, interactive disk usage analyzer for the terminal"
  homepage "https://github.com/sadopc/godu"
  version "1.2.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.9/godu-darwin-arm64"
      sha256 "2217969ebd98fc1911d98b5cf016433b3f9fe91b080c8e5844032ce518d24480"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.9/godu-darwin-amd64"
      sha256 "4958fed1f848ccc273d6056e1a6efc148122a004c8b9da968cb9318e093bfbdf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/godu/releases/download/v1.2.9/godu-linux-arm64"
      sha256 "79eee55f63456938e739962f65cb21ae3c855b485a4557be5c2d74ba095ff634"
    else
      url "https://github.com/sadopc/godu/releases/download/v1.2.9/godu-linux-amd64"
      sha256 "2f35c5b9da5dc782c7bec30b47b05345e4307edaa4f95c909d051cede74784c1"
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

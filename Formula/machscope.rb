class Machscope < Formula
  desc "Native macOS binary analysis: Mach-O parsing, ARM64 disassembly, and debugging"
  homepage "https://github.com/sadopc/machscope"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/sadopc/machscope/releases/download/v1.0.0/machscope-darwin-arm64.tar.gz"
      sha256 "311e24bb9f92d5fc7137bcd3879ce020f383922ee4eee7290dd3bd613c234215"
    end
  end

  depends_on :macos
  depends_on arch: :arm64

  def install
    bin.install "machscope"
  end

  test do
    assert_match "machscope", shell_output("#{bin}/machscope --version")
  end
end

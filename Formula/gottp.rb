class Gottp < Formula
  desc "A Postman/Insomnia-like TUI API client built in Go"
  homepage "https://github.com/sadopc/gottp"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_darwin_amd64.tar.gz"
      sha256 "4c83a436d9459b9dfa5549ece3014c343678612d5118b4a4444130136f635de7"
    end
    on_arm do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_darwin_arm64.tar.gz"
      sha256 "057ea2d527f0d6952e73cdd5228f252d7b04c349069d2364e052e9f026122644"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_linux_amd64.tar.gz"
      sha256 "016fbb818831c630ad9b7c22367fdc0e8b9ab76e6988e65084013fcc2575e670"
    end
    on_arm do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_linux_arm64.tar.gz"
      sha256 "65ead4038653b801b93d08510a795067859615544b19f37366b6c76d04c2d165"
    end
  end

  def install
    bin.install "gottp"
  end

  test do
    assert_match "gottp", shell_output("#{bin}/gottp --version")
  end
end

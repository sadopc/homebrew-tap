class Gottp < Formula
  desc "A Postman/Insomnia-like TUI API client built in Go"
  homepage "https://github.com/sadopc/gottp"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/sadopc/gottp/releases/download/v1.0.0/gottp_1.0.0_darwin_amd64.tar.gz"
      sha256 "500a83358b87f3ab0fa401fc4561a0feed4799113efdaf5c9abbd1c771805c19"
    end
    on_arm do
      url "https://github.com/sadopc/gottp/releases/download/v1.0.0/gottp_1.0.0_darwin_arm64.tar.gz"
      sha256 "0fb345966607eea95d12835359ca64763e9899916140f437b75f5368bda2b57b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sadopc/gottp/releases/download/v1.0.0/gottp_1.0.0_linux_amd64.tar.gz"
      sha256 "6e211e13a357640f41007edde965f149050a9eadfdbeb16187aef2ccf428f625"
    end
    on_arm do
      url "https://github.com/sadopc/gottp/releases/download/v1.0.0/gottp_1.0.0_linux_arm64.tar.gz"
      sha256 "7fb4d6eab488e29006bcf6924b57e410e939749e22a3436af9ad34a0ff823d95"
    end
  end

  def install
    bin.install "gottp"
  end

  test do
    assert_match "gottp", shell_output("#{bin}/gottp --version")
  end
end

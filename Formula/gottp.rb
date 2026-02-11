class Gottp < Formula
  desc "A Postman/Insomnia-like TUI API client built in Go"
  homepage "https://github.com/sadopc/gottp"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_darwin_amd64.tar.gz"
      sha256 "c91ea96cc4582f66ef45494969960a1d90df683fbb8797caab7d5970bb92274f"
    end
    on_arm do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_darwin_arm64.tar.gz"
      sha256 "49523af50acd8a8881d2cdbad57255bb6fbfba5305424610beeab5a9016c697a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_linux_amd64.tar.gz"
      sha256 "166423bcfe310a8f32802d2c08b5ea8ed016190c81e5138af425bdc1e519cb25"
    end
    on_arm do
      url "https://github.com/sadopc/gottp/releases/download/v0.5.0/gottp_0.5.0_linux_arm64.tar.gz"
      sha256 "42e062eb182c1207450042e97128455c1a9e7ea9523ebb65e0eee9571d885151"
    end
  end

  def install
    bin.install "gottp"
  end

  test do
    assert_match "gottp", shell_output("#{bin}/gottp --version")
  end
end

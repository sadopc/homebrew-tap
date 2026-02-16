class Edaboard < Formula
  desc "Native macOS menubar clipboard manager with instant search"
  homepage "https://github.com/sadopc/edaboard"
  version "0.1.0"
  license "MIT"

  depends_on macos: :tahoe
  depends_on arch: :arm64

  url "https://github.com/sadopc/edaboard/releases/download/v0.1.0/EdaBoard-0.1.0-arm64.zip"
  sha256 "1c2df343831ee0f6e5d641f98269d2399ae7a6991207b5a902e6da30d8dddc09"

  def install
    prefix.install "ClipVault.app"
    bin.write_exec_script prefix/"ClipVault.app/Contents/MacOS/ClipVault"
  end

  def post_install
    system "xattr", "-rd", "com.apple.quarantine", "#{prefix}/ClipVault.app"
  end

  def caveats
    <<~EOS
      EdaBoard has been installed to:
        #{prefix}/ClipVault.app

      To add to Applications:
        ln -sf #{prefix}/ClipVault.app /Applications/ClipVault.app

      EdaBoard is not notarized. If macOS blocks the app:
        xattr -rd com.apple.quarantine #{prefix}/ClipVault.app
    EOS
  end

  test do
    assert_predicate prefix/"ClipVault.app/Contents/MacOS/ClipVault", :executable?
  end
end

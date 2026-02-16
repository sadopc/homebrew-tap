cask "edaboard" do
  version "0.1.0"
  sha256 "1c2df343831ee0f6e5d641f98269d2399ae7a6991207b5a902e6da30d8dddc09"

  url "https://github.com/sadopc/edaboard/releases/download/v#{version}/EdaBoard-#{version}-arm64.zip"
  name "EdaBoard"
  desc "Native macOS menubar clipboard manager with instant search"
  homepage "https://github.com/sadopc/edaboard"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "ClipVault.app"

  caveats <<~EOS
    EdaBoard is not notarized. If macOS blocks the app, reinstall with:
      brew reinstall --cask --no-quarantine edaboard
  EOS

  zap trash: [
    "~/Library/Application Support/EdaBoard",
    "~/Library/Preferences/com.edaboard.app.plist",
  ]
end

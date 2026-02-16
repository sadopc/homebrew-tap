cask "edaboard" do
  version "0.1.0"
  sha256 "ee010ffa946c2b22f8887cf1c74863fa24ada9ba013772faa6f2c2fc9c962be1"

  url "https://github.com/sadopc/edaboard/releases/download/v#{version}/EdaBoard-#{version}-arm64.zip"
  name "EdaBoard"
  desc "Native macOS menubar clipboard manager with instant search"
  homepage "https://github.com/sadopc/edaboard"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "EdaBoard.app"

  caveats <<~EOS
    EdaBoard is not notarized. If macOS blocks the app, reinstall with:
      brew reinstall --cask --no-quarantine edaboard
  EOS

  zap trash: [
    "~/Library/Application Support/EdaBoard",
    "~/Library/Preferences/com.edaboard.app.plist",
  ]
end

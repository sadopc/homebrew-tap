cask "magnetism" do
  version "1.0.1"
  sha256 "847821ab77c4b48a004f8fb4ad115efbb7b0da06f803d9039eb9168279a55282"

  url "https://github.com/sadopc/magnetism/releases/download/v#{version}/Magnetism-#{version}.zip"
  name "Magnetism"
  desc "Free, open-source window manager for macOS"
  homepage "https://github.com/sadopc/magnetism"

  depends_on macos: ">= :sonoma"

  app "Magnetism.app"

  caveats <<~EOS
    Magnetism is not notarized. If macOS blocks the app, reinstall with:
      brew reinstall --cask --no-quarantine magnetism
  EOS

  zap trash: [
    "~/Library/Preferences/com.magnetism.app.plist",
  ]
end

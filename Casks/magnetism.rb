cask "magnetism" do
  version "1.0.0"
  sha256 "a65c5e575d2e0e53fc68b2a24306c3b719d7f99bb8c5385d35a74a18ce86e175"

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

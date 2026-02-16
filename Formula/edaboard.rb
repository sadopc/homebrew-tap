class Edaboard < Formula
  desc \"Native macOS menubar clipboard manager with instant search\"
  homepage \"https://github.com/sadopc/edaboard\"
  url \"https://github.com/sadopc/edaboard.git\", branch: \"main\"
  version \"0.1.0\"
  license \"MIT\"

  depends_on xcode: :build

  def install
    system \"xcodebuild\", \"-scheme\", \"ClipVault\", \"-configuration\", \"Release\", \"build\", \"CODE_SIGN_IDENTITY=\", \"CODE_SIGNING_REQUIRED=NO\", \"DWARF_DSYM_FOLDER_PATH=#{buildpath}\"
    
    app_path = buildpath.glob(\"build/Release/ClipVault.app\").first
    raise \"ClipVault.app not found after build\" unless app_path
    
    prefix.install app_path
  end

  def caveats
    <<~EOS
      EdaBoard is not code-signed. If macOS blocks the app, reinstall with:
        brew reinstall edaboard
      Then allow it in System Preferences → Security & Privacy
      
      Or use:
        xattr -rd com.apple.quarantine /Applications/ClipVault.app
    EOS
  end

  test do
    assert (prefix/"ClipVault.app").directory?
  end
end

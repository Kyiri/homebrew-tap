cask "kyiri-clip" do
  version "1.0.0"
  sha256 "fa7ae7c51d1bfb2a42253e2c14f64ffde3641cc17f97dfc257a730eb9ec03f2e"

  url "https://github.com/Kyiri/kyiri-clip/releases/download/v#{version}/Kyiri-Clip-#{version}.dmg"
  name "Kyiri Clip"
  desc "Clipboard history manager for macOS (Windows+V style), by Kyiri"
  homepage "https://kyiri.com"

  depends_on macos: ">= :sonoma"

  app "Kyiri Clip.app"

  # The app is signed but not Apple-notarized, so macOS quarantines it. Clear the
  # flag on install so it opens without the Gatekeeper warning.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Kyiri Clip.app"]
  end

  uninstall quit: "com.kushlendra.clipboardmanager"

  zap trash: [
    "~/Library/Application Support/ClipboardManager",
  ]
end

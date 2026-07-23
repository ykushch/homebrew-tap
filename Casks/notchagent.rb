cask "notchagent" do
  version "0.3.1"
  sha256 "91e8f2c4c68e4c19ce63425621400e83d2dfb61b902de71b01a7f600a4395317"

  url "https://github.com/ykushch/agsig/releases/download/v#{version}/NotchApp-#{version}.zip"
  name "NotchAgent"
  desc "Notch control surface for AI coding agents running under herdr"
  homepage "https://github.com/ykushch/agsig"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "NotchApp.app"

  caveats <<~EOS
    NotchAgent requires herdr to be installed and running.

    If macOS blocks the ad-hoc-signed app, remove its quarantine attribute with:
      xattr -dr com.apple.quarantine /Applications/NotchApp.app

    Grant Notch Agent access in:
      System Settings → Privacy & Security → Accessibility
  EOS
end

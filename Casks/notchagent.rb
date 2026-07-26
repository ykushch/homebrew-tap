cask "notchagent" do
  version "0.4.0"
  sha256 "00712166a9b2d362089a7cb705c10f56e98e390ddb5dc04e12df1573d7108b19"

  url "https://github.com/ykushch/notchagent/releases/download/v#{version}/NotchApp-#{version}.zip"
  name "NotchAgent"
  desc "Notch control surface for AI coding agents running under herdr"
  homepage "https://github.com/ykushch/notchagent"

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

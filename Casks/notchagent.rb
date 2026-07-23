cask "notchagent" do
  version "0.3.2"
  sha256 "b444cae6cfa715108480c1fed03065f3d0fe581db0a6f20cd77cd872afb6b491"

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

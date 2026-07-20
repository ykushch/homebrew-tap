cask "notchagent" do
  version "0.1.1"
  sha256 "d4ef4f397bddd02ef95dac24ac66c8075450e94d8b472b666998d71178fdeb1a"

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

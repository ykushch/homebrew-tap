cask "notchagent" do
  version "0.1.0"
  sha256 "f612ce7b1c461fc57a52b656b482855220c45ccfbac95ccb63047e97f24d6472"

  url "https://github.com/ykushch/agsig/releases/download/v#{version}/NotchApp-#{version}.zip"
  name "NotchAgent"
  desc "Notch control surface for AI coding agents running under herdr"
  homepage "https://github.com/ykushch/agsig"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "NotchApp.app"

  caveats <<~EOS
    NotchAgent requires herdr to be installed and running.

    If macOS blocks the ad-hoc-signed app, reinstall with:
      brew install --cask --no-quarantine ykushch/tap/notchagent

    Grant Notch Agent access in:
      System Settings → Privacy & Security → Accessibility
  EOS
end

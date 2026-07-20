# Homebrew Tap

Install NotchAgent with:

```bash
brew install --cask ykushch/tap/notchagent
```

NotchAgent requires [herdr](https://herdr.dev) to be installed and running.
Because the app is currently ad-hoc signed, macOS may require a first launch via
right-click → **Open**, or removal of its quarantine attribute:

```bash
xattr -dr com.apple.quarantine /Applications/NotchApp.app
```

# Homebrew tap for SoundRouter

[SoundRouter](https://github.com/Iamanshup/SoundRouter) is a macOS menu bar app that sends each app, or a single browser tab, to the speaker of your choice.

## Install

```sh
brew install --cask iamanshup/tap/soundrouter
```

Update with `brew upgrade --cask soundrouter`. Uninstall with `brew uninstall --cask soundrouter`; add `--zap` to also remove its settings.

SoundRouter isn't notarized by Apple, so the first time you open it macOS will say it *could not verify* SoundRouter. Click **Done**, then go to **System Settings › Privacy & Security** and click **Open Anyway**. You only need to do this once.

Requires macOS 15 or later.

# Iamanshup's Homebrew tap

macOS apps by [@Iamanshup](https://github.com/Iamanshup).

| App | Description | Install |
|---|---|---|
| [Folio](https://github.com/Iamanshup/Folio-PDFToolbox) | A native PDF toolbox: merge, split, compress, convert, edit, sign, redact, OCR, translate and more, all running locally. Requires macOS 26 or later on Apple silicon. | `brew install --cask iamanshup/tap/folio` |
| [SoundRouter](https://github.com/Iamanshup/SoundRouter) | A menu bar app that sends each app, or a single browser tab, to the speaker of your choice. Requires macOS 15 or later. | `brew install --cask iamanshup/tap/soundrouter` |

Update with `brew upgrade --cask <name>`. Uninstall with `brew uninstall --cask <name>`; add `--zap` to also remove its settings.

These apps aren't notarized by Apple, so the first time you open one, macOS will say it *could not verify* the app. Click **Done**, then go to **System Settings › Privacy & Security** and click **Open Anyway**. You only need to do this once per app.

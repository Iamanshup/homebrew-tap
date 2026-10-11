cask "soundrouter" do
  version "1.2"
  sha256 "4f6dc3db89df731c3db41d43a9f00fdda84f0468bec9b3b09acdf872540ef3b3"

  url "https://github.com/Iamanshup/SoundRouter/releases/download/v#{version}/SoundRouter-#{version}.dmg"
  name "SoundRouter"
  desc "Send each app or browser tab to the speaker of your choice"
  homepage "https://github.com/Iamanshup/SoundRouter"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "SoundRouter.app"

  zap trash: [
    "~/Library/Application Support/SoundRouter",
    "~/Library/Preferences/com.soundrouter.app.plist",
  ]

  caveats <<~EOS
    SoundRouter isn't notarized by Apple. The first time you open it, macOS will say
    it "could not verify" SoundRouter: click Done, then open
    System Settings > Privacy & Security and click "Open Anyway". This is needed once.
  EOS
end

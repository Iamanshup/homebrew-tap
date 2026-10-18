cask "folio" do
  version "1.1.0"
  sha256 "dd16c011eecbd917642a37d78c817a0b33f0802981b7ca56807281b9524efa09"

  url "https://github.com/Iamanshup/Folio-PDFToolbox/releases/download/v#{version}/Folio-#{version}.dmg"
  name "Folio"
  desc "Native PDF toolbox: merge, split, compress, convert, edit, sign, OCR and more"
  homepage "https://github.com/Iamanshup/Folio-PDFToolbox"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Folio.app"

  zap trash: [
    "~/Library/Application Support/Folio",
    "~/Library/Preferences/com.anshu.folio.plist",
    "~/Library/Saved Application State/com.anshu.folio.savedState",
  ]

  caveats <<~EOS
    Folio isn't notarized by Apple. The first time you open it, macOS will say
    it "could not verify" Folio: click Done, then open
    System Settings > Privacy & Security and click "Open Anyway". This is needed once.
  EOS
end

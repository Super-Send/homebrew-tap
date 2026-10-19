cask "ranla" do
  version "0.9.7"
  sha256 "2c518180e82714b256db843f5c70117f89d71838375a3bd1028cd8bbcd02f13e"

  url "https://github.com/Super-Send/ranla-desktop-releases/releases/download/v#{version}/Ranla-#{version}-universal.dmg"
  name "Ranla"
  desc "AI growth engineer that runs your marketing"
  homepage "https://ranla.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Ranla.app"

  zap trash: [
    "~/Library/Application Support/Ranla",
    "~/Library/Caches/ai.ranla.desktop",
    "~/Library/Caches/ai.ranla.desktop.ShipIt",
    "~/Library/Caches/ranla-desktop-updater",
    "~/Library/HTTPStorages/ai.ranla.desktop",
    "~/Library/Logs/Ranla",
    "~/Library/Preferences/ai.ranla.desktop.plist",
    "~/Library/Saved Application State/ai.ranla.desktop.savedState",
  ]
end

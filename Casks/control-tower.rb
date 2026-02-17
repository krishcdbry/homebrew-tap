cask "control-tower" do
  version "1.0.0-beta.2"
  sha256 "0fdf1144112b7931c1c4ceecf8122dfb14a983c44f65cb878d9cff85f425e688"

  url "https://github.com/krishcdbry/ControlTower/releases/download/v#{version}/ControlTower-#{version}.zip",
      verified: "github.com/krishcdbry/ControlTower/"
  name "Control Tower"
  desc "Menu bar app for monitoring AI coding assistant usage"
  homepage "https://github.com/krishcdbry/ControlTower"

  depends_on macos: ">= :sonoma"

  app "ControlTower.app"

  zap trash: [
    "~/Library/Application Support/ControlTower",
    "~/Library/Caches/com.krishcdbry.controltower",
    "~/Library/Preferences/com.krishcdbry.controltower.plist",
  ]
end

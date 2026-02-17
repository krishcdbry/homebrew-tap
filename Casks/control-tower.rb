cask "control-tower" do
  version "1.0.0-beta.1"
  sha256 "29fdf1256c3e3145c2d1f71aff7700cbf47172d179bf8dcf122c296179f923f1"

  url "https://github.com/krishcdbry/control-tower/releases/download/v#{version}/ControlTower-#{version}.zip",
      verified: "github.com/krishcdbry/control-tower/"
  name "Control Tower"
  desc "Menu bar app for monitoring AI coding assistant usage"
  homepage "https://github.com/krishcdbry/control-tower"

  depends_on macos: ">= :sonoma"

  app "ControlTower.app"

  zap trash: [
    "~/Library/Application Support/ControlTower",
    "~/Library/Caches/com.krishcdbry.controltower",
    "~/Library/Preferences/com.krishcdbry.controltower.plist",
  ]
end

cask "control-tower" do
  version "1.0.0-beta.2"
  sha256 "c182231d85905efdefa3a8a2b34289f8c4041d8dca7ff67a36f42af904b1463b"

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

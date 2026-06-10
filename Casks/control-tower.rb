cask "control-tower" do
  version "1.0.0-beta.3"
  sha256 "d107d2ac82f60be05f0340fea166fb9b11f91fab0de8b8ed8d69e9e3e5b41d73"

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

cask "control-tower" do
  version "1.0.0-beta.2"
  sha256 "a5cfa04faaf121bd199cdd61769cf09a4ebe1c6b9ea4064e77fd4e20298dda62"

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

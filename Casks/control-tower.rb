cask "control-tower" do
  version "1.0.0-beta.1"
  sha256 "ae6d423a220d5186700780e2264676db87ef3c3f1991f4d467b0064ea5028320"

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

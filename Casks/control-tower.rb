cask "control-tower" do
  version "1.0.0-beta.1"
  sha256 "79c2d769927f4f74fd39e98624cc29ae37181a1c1c5f4637c4fb4f3c6e639f71"

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

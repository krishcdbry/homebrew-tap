cask "control-tower" do
  version "1.1.0"
  sha256 "68f2bbf2100a454509be0de4e5d007efea1470c3cfc7d6b56a1b67df3e59ead6"

  url "https://github.com/krishcdbry/ControlTower/releases/download/v#{version}/ControlTower-#{version}.zip"
  name "Control Tower"
  desc "Menu bar app for monitoring AI coding assistant usage"
  homepage "https://github.com/krishcdbry/ControlTower"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ControlTower.app"
  binary "ct"

  zap trash: [
    "~/Library/Application Support/ControlTower",
    "~/Library/Caches/com.krishcdbry.controltower",
    "~/Library/Preferences/com.krishcdbry.controltower.plist",
  ]
end

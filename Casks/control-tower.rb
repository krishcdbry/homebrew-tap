cask "control-tower" do
  version "1.0.0"
  sha256 "803089aacb4ccdb3b22d29c8df7406f50059a0e820422cf82451df26767973dc"

  url "https://github.com/krishcdbry/ControlTower/releases/download/v#{version}/ControlTower-#{version}.zip",
      verified: "github.com/krishcdbry/ControlTower/"
  name "Control Tower"
  desc "Menu bar app for monitoring AI coding assistant usage"
  homepage "https://github.com/krishcdbry/ControlTower"

  depends_on macos: :sonoma

  app "ControlTower.app"

  zap trash: [
    "~/Library/Application Support/ControlTower",
    "~/Library/Caches/com.krishcdbry.controltower",
    "~/Library/Preferences/com.krishcdbry.controltower.plist",
  ]
end

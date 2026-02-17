cask "control-tower" do
  version "1.0.0-beta.1"
  sha256 "e8562e42be9060c50cfb7846a2ecc44347e3a0f039d9116112388e825d21eb4c"

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

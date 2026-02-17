class ControlTower < Formula
  desc "Unified menu bar app for monitoring AI coding assistant usage"
  homepage "https://github.com/krishcdbry/control-tower"
  url "https://github.com/krishcdbry/control-tower/archive/refs/tags/v1.0.0-beta.1.tar.gz"
  sha256 "c9c0fb147ff90e598eab3b01449f34c99638d036d05252f9b48a2a2939061d91"
  license "MIT"
  head "https://github.com/krishcdbry/control-tower.git", branch: "main"

  depends_on xcode: ["15.0", :build]
  depends_on macos: :sonoma

  def install
    system "swift", "build",
           "--disable-sandbox",
           "-c", "release"

    bin.install ".build/release/ct"
  end

  def caveats
    <<~EOS
      The 'ct' CLI tool has been installed.

      For the menu bar app, build from source:
        git clone https://github.com/krishcdbry/control-tower.git
        cd control-tower
        ./Scripts/compile_and_run.sh

      Provider setup:
        Claude:  Run 'claude' to authenticate
        Codex:   Run 'codex' to authenticate
        Gemini:  Run 'gemini' or set GEMINI_API_KEY
        Copilot: Run 'gh auth login'
        Cursor:  Sign in at cursor.com
    EOS
  end

  test do
    assert_match "usage", shell_output("#{bin}/ct --help", 1)
  end
end

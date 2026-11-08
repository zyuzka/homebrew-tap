cask "hats" do
  version "0.4.0"
  sha256 "3de65a5f1968b3b068c244bae299fd1cbc0e2fc015705cc5c2c9b5f73300ac01"

  url "https://github.com/zyuzka/hats/releases/download/v#{version}/Hats-#{version}.dmg"
  name "Hats"
  desc "Menu-bar app that switches the logged-in Claude Code account without a relogin"
  homepage "https://github.com/zyuzka/hats"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Hats.app"

  uninstall quit: "dev.tmk.hats"

  zap trash: [
    "~/Library/Application Support/Hats",
    "~/Library/Preferences/dev.tmk.hats.plist",
  ]
end

cask "hats" do
  version "0.4.1"
  sha256 "564420ed7fbaa14af41b9bc5ed7a560263a2c2a6004cfe8a1f4cd667ed43519e"

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

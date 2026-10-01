cask "atlas" do
  version "1.7.0"
  sha256 "c4de918726c8b966456fcfffcc42186d96cccef8108081c099f7f1edca99dc5c"

  url "https://github.com/PurvarajG/atlas-releases/releases/download/v#{version}/Atlas-#{version}.dmg"
  name "Atlas"
  desc "Capture buffer for notes, links, screenshots, and prompts"
  homepage "https://purvarajg.github.io/atlas-releases/"

  depends_on macos: :sonoma

  app "Atlas.app"

  zap trash: [
    "~/Library/Application Support/Atlas",
    "~/Library/Preferences/app.atlas.Atlas.plist",
  ]
end

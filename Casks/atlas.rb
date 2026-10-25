cask "atlas" do
  version "1.13.0"
  sha256 "064cfa1b7ee37b7b3d3bd0d824e12b71887ee64b74f9b515267884fe1b1c4955"

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

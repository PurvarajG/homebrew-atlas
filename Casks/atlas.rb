cask "atlas" do
  version "1.13.2"
  sha256 "e841a013cf21d846b188da7badfcff667c5de5027d6a75341ee1f0d61f8c27bc"

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

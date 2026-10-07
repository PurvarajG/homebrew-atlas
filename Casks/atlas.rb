cask "atlas" do
  version "1.10.0"
  sha256 "1695242686f73a40d24b32a3550a046e87a73eaa103b3d74a99429cff79d8f32"

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

cask "atlas" do
  version "1.6.0"
  sha256 "d6766f13a52c86e533e2a5858019bc0b82390a0f440fa9583969c93bb5050676"

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

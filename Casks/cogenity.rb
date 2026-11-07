cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.1"
  sha256 arm: "86de3ffa0ab952313807e000b257f143b9384792444dfb637b8077bf0cd1a75a", intel: "24f405f86d9ddc9034d5d720ba37f4e01fe30327c5afcf05ae192e0f7f5879cb"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

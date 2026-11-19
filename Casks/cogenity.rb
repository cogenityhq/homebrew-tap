cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.11"
  sha256 arm: "36b18ceef55ea2dd013461f0310a771b6d003797a68f4ba1465693a07dc33773", intel: "46fa7e59b36c1028f5f99dadb1cac5f79090453f5b7978d0328c9c3d04b11654"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

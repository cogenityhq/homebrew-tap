cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.15"
  sha256 arm: "9c42ec6a653061baeb99fce5a9620d3d94f7586a85e9968a8063af50a1e49eb9", intel: "5282d33d0ffdb3d5146e743338e56f27024ba8886271b7d461c58c9e407a1a78"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.13"
  sha256 arm: "336315d63bd901180842e304f93207d613d1dbc62393c12e473799ee6a1194d8", intel: "02fa3309fdab403f9d0d9962f85598b68bc1108ac6ae56b0388a5c56c125c1ec"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

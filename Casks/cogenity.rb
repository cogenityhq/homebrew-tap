cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.13"
  sha256 arm: "a9786b6be231209664ef066eddc4031994fdd06c0542145e1eaee14d03bd2923", intel: "a7294c03b4e6bde77d4e0270663bd65c223ae3d36fc1fcee20222d1d64b2cd11"

  url "https://github.com/kennethlynne/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

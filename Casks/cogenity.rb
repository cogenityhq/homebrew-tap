cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.40.0"
  sha256 arm: "93fbac9526d34e7c4ff0cd2619f3d1d90b1f65130af196dc38f0680e64a76c78", intel: "d49fa2d8861e9febd38afd3cb0fa3064fb946b00d3aed4516d5b41a666901cc2"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

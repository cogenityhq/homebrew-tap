cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.2"
  sha256 arm: "765294b6f6d6862e8e0d8777423f7ab950f51280a70d39311f6d88c02d322c41", intel: "f302d7c6048e07a9f68d66ed8691a9baa3f4dd1e25b68f1cfd0a9605144664b7"

  url "https://github.com/kennethlynne/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

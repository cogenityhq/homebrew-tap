cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.30"
  sha256 arm: "0530f60ba221ef489b9c8c9e93cb21787ef6dcd4df8cc630e9395553ae66c0f6", intel: "f9bc850c40c152e984764d00dca422d4176077c18f7056cf6bf71983be1ff45d"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.33"
  sha256 arm: "7716818fd9ae3e3efdccfbf8643bb22f62610c89ab0effe1f8e6c127cb716e39", intel: "446b1db546acd4a1adabb9145c18e17d380701d0d0e231d0713c17fb8ff1010b"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

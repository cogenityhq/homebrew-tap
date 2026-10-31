cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.31"
  sha256 arm: "e2915f25bf749540c6c1e145ba81b5802b5a9d47383dcab492fcbdf6428f7d9f", intel: "237f078928c82e216e896afcdb044d1bae35217bfe3315a45f20417aa04c7bbf"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

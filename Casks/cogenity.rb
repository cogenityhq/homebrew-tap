cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.14"
  sha256 arm: "e2d729939b31f781352fe2c9c9b243865f74dba4feefc2466b91e08e60279e4e", intel: "b7f1cf80ccf27a740505725adcd266f936ff2202e262f031860c2234a158127e"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

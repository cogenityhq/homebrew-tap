cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.4"
  sha256 arm: "0626cdd47fe21993e29fc12a1c67ea32e5cd61b01f01601d95f96f721655e9db", intel: "24206d137f87edc7fd5cdfad5e0b70aa1527e1adb8959f9d43eed910edba6843"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

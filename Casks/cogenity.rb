cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.21"
  sha256 arm: "6a3466d140c7c384cd93859e31a16c2d423e4ae08963533112ce7c18523b3d7e", intel: "7139a9e009478a607fe4f2549c6516f215e0293d4093300b7ed1449faa0452a4"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

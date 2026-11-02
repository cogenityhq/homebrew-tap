cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.39.0"
  sha256 arm: "65d2f1c518ab87274a7a091ec0c6ccb5b023d0c6cd5e44c048741768167bd600", intel: "b403e07e02c7c1cca916b0bc30a9150ba2861fcf86659d12d64111d5076f77ea"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

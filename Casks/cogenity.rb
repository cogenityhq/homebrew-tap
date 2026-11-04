cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.40.1"
  sha256 arm: "6b515caef33a332040313ce482aa9b5d45702efcc19cd8302af1926b463f1d47", intel: "9ac6da81b6bc47faa943669c50c8fd38da4f457376192fb0e26f067bc03c3169"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

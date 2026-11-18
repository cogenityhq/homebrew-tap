cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.9"
  sha256 arm: "04954b4baf8fd54326b7447bb6724da0968861b5fd2762044baa47899a1d535b", intel: "6d4c0e9bffccea9801a6d652fcdc1d0bcebf25362dbda58f2baaa72cafd2e22f"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

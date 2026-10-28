cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.29"
  sha256 arm: "1ca7cbd9325b5274605e84fa84a8c875328d9ea1a4524b7ce1a077f1bed14144", intel: "dcb9f710a6bc9bac3e91d1df19a532d07ab2070cb1070d5e4fbbf18ebaa2c3af"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

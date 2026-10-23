cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.20"
  sha256 arm: "da20d6c6014ae145b477595c5827e2a46ab5fee03d30de22ec207df8bace1bf2", intel: "ba74f4cf7076a648c3753ff9fe5800f88306fddc1c2b109c809e8cf321145e0b"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

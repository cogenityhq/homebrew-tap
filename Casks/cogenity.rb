cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.36.8"
  sha256 arm: "1636f32c5e572942246c6c6a597fe46ca82cc16712300c95dbee2753bb49b8e4", intel: "fd7416a54b3f6448b0fabb670243897d2c153dd3075fbf453a3704f91ad0ba9a"

  url "https://github.com/kennethlynne/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

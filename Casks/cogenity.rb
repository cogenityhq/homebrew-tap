cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.40.2"
  sha256 arm: "b692e4f3a18831f84250e8e93f5dd5c5e6956a3e016f371415d1a7aaf3a3f8a5", intel: "7e7daa923a81de552405c57a09cf18a8156aee9a3ce8b9893bc858eac500004c"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

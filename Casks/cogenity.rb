cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.23"
  sha256 arm: "15dfeb99fa40971b7df81d51405aea0ddc23d0c33fa82a7252ce2b1b6294bd38", intel: "8e01d1f271949930d96a1d3914aeef0e5a97785c2746f729e466f99c9256d7ef"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

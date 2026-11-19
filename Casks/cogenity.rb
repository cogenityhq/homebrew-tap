cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.12"
  sha256 arm: "8dc9d7a119ecde43daa7e1a6d1cf21cfc124b1a1f3749cb26696491bafda5d42", intel: "177e3d0da62faf8a9ea1892e6d204dc477cb9992daba858d106ce24290279ef9"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

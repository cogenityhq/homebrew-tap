cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.26"
  sha256 arm: "fd7901caf7db5958fdfe747bcdf5f55e0490b28ebe2464288fdf8137cace2eaa", intel: "bd59e2779374334c10c079bc75e372033d64d123d9431e825a4f18792b93c236"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

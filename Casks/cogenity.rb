cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.6"
  sha256 arm: "301e3d82d7c8b2c0170b2d7bbad69365452560cd0931b3346721a291dd8c014b", intel: "3350959c6daade553731bd98e8b62a1d821f2cfbe31b810fe4cd9bb196ec36a5"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

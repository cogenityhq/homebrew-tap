cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.5"
  sha256 arm: "11f1dc855821e42f71597f09fd0d2138a1714893d1c466e976728e5507479dbd", intel: "46be79c5a08164e9af22f7ce1c65a9c25b6b71056f5e17908acea8c8351983a7"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

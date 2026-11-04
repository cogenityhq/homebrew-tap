cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.39.1"
  sha256 arm: "2e666d9e9841d76ef761e0c273854fc53da22d757f0b56fcf5524a2cb71d113c", intel: "ca3f3ea2551f53480fc6194c19d98824c2aedb902c70d747420557f362438564"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

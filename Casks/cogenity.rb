cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.2"
  sha256 arm: "4cc2cbdf7d586a09a62b09a20ad5aa4f9f3885d75bae38db97c1415f7c744132", intel: "97b88f6bcbed50d716b65490517e286082ce269bb10e3c4da99cb8137865c406"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

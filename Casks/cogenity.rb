cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.0"
  sha256 arm: "5fcb64df5c6bf7148d157fb1d2c4dd61580a15899c45ae431c092b8d3abae2cc", intel: "0fd7fbc3746e2018a675a0a8b2b6a72302ea8fbad79a6e375b268a139f75c995"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.22"
  sha256 arm: "5bd8cb8ce019f7242bd0e75b1c0620d46c8071883d5c887ce732efabc3f87f0f", intel: "8cecb6128dcaad8c678ad80606db9982a8cf04b3bb86fd596c3b63dffc718897"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.3"
  sha256 arm: "3803450096b0bb190d2a8921d9e088318c76d743de5c72b0480516228817ba33", intel: "cd84113a82c76bf3899cea4dd3ee23b71d7cc73576e1c111c7eb8e7aac2385b6"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.10"
  sha256 arm: "5636449fe034b346de6ba50e76671f11590463f8569080e79948887d76cb1274", intel: "b3ae83451f24749389f5510b6ad3d585f63592b35dfd8cf6a168cb0b1b2105c6"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

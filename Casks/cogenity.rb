cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.16"
  sha256 arm: "30a85d82e4e8405ebbb53e62a8d9c24fce50ae10a73f5ce169f2edb350eba979", intel: "2e732f6e377cf720855be65bd01e95bb6a4e61ae79146228851a4a2abc090254"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

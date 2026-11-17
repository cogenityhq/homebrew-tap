cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.41.8"
  sha256 arm: "12ae7f1a14242fe743ca16692d2305aef4799d983eae885db65e7487b86b8b16", intel: "5222f36c1ad1f13938056e2e30d21ba014892c4a7c94a870f4463fd77c2962c2"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

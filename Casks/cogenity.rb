cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.32"
  sha256 arm: "a0c42ab5aee94be2d5f5c0916f3afbb1a021d4b870cb76835ad256a8a8a91d9b", intel: "3ba972402b4a96787ad87af868b629607f3738ed7cfe63ddc674fdb27434bc3f"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

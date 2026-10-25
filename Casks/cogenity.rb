cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.24"
  sha256 arm: "d3c1c8db792748938510ef79dbb2b5a04da492c7b8185a5483fd34931fb8e1a3", intel: "d686022ac489454d5a95c9e9b0e94b154ee966e640ce70848155bfcb2ff5db86"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

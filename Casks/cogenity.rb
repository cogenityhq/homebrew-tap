cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.25"
  sha256 arm: "b147ee27be235872805cfb606d5026151e1acbb3a9cb9c690540e366051d4b40", intel: "2ccc2e871dad836dbb22d7717ec508c0d6c23f73338410aea5f4d8da3b566f53"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.37.0"
  sha256 arm: "30b7763ac4c467b0410c31fdd7235f7616e497972ce042f84e212ed167d8539b", intel: "7243cab58ffd11afabbcc62c39b555b9ad9a43c881716c6412ecf9ee9cde7e0f"

  url "https://github.com/kennethlynne/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

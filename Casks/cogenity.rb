cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.28"
  sha256 arm: "78d5579587366cf374114de6242a99445538d21642588b884d299c9ec1523e20", intel: "364d4a5e7108a0c71fd0633b147b198193d80c7fdd8abc4c1af6f6d3f7febefb"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

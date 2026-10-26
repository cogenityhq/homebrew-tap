cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.27"
  sha256 arm: "091318caa6b854a169631433b98497411c935ab73fddfbf75b06ed44a9c12b79", intel: "16938f3b86eb20032c95159176a190534f13779c9d0121fbdaa9e443070e3d6c"

  url "https://github.com/cogenityhq/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

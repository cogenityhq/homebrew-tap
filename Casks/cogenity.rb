cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.37.1"
  sha256 arm: "35cd1ddeef3f911127e83de3396ed2bc6291c9b6f1c406bf70f5ed5892aa29f1", intel: "09e3181663ffb1fbec1dce165fffa560a3d836efe696bd5144ae1aa07bc1a0fe"

  url "https://github.com/kennethlynne/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

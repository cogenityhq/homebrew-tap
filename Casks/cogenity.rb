cask "cogenity" do
  arch arm: "arm64", intel: "x64"
  version "0.38.0"
  sha256 arm: "b9a5deeb7221bf93e20fefcd629a6edaccb33874693f287e76bad6397b7c1d6d", intel: "68cfc9e2b3558996a775171ccb3b7b4778f1ed3f298eb0c171c34dff272e1fce"

  url "https://github.com/kennethlynne/cogenity/releases/download/v#{version}/cogenity-darwin-#{arch}"
  name "Cogenity"
  desc "Multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"

  depends_on macos: :ventura
  container type: :naked
  binary "cogenity-darwin-#{arch}", target: "cogenity"
end

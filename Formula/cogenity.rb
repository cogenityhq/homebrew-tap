class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.2/cogenity-darwin-arm64"
      sha256 "da820f29059ea2f142600a517862f4af8c294652190a51056b0eaa707c4e2e40"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.2/cogenity-darwin-x64"
      sha256 "ae6615fd8a8a53275a1a516c1f36219b09e06fb3ef0b99606b3dfcf6ca5ee061"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

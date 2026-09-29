class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.1/cogenity-darwin-arm64"
      sha256 "9d588849fa23659066ef2a1121fc1d24e136e20efc665365fb2d073638808f80"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.1/cogenity-darwin-x64"
      sha256 "3a440064338ba387d65b1dc37fc1f1f547bbc180d19e12c978157cb723c32261"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

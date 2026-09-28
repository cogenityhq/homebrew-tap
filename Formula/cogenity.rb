class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.32.2/cogenity-darwin-arm64"
      sha256 "b1a69edd5ec02f0bbb5c06d4cde88289dfd358ca82e0c95a5e11f1242970ef60"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.32.2/cogenity-darwin-x64"
      sha256 "63a8b2ff281b3ede00b170dc3960ff01f10b49d3206f6c787c7d62c385e027a6"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

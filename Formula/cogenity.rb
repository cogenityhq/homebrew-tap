class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.32.1/cogenity-darwin-arm64"
      sha256 "6322717cba701486b11e996dc4c39748c33ec964d43c90d4c19d7f63d17d3675"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.32.1/cogenity-darwin-x64"
      sha256 "3cf628d54bdb7e70d7885c335104e4972fb42bd6010f4142bbef80aba32c245a"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.36.6/cogenity-darwin-arm64"
      sha256 "d1120b7d856187815214fd67969c3e6c5abe8e608cd5f4a901b09c8997053cbc"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.36.6/cogenity-darwin-x64"
      sha256 "c2b56a84b51af085064364c71b240d2bcfa42c97be7da3f2b41b018b75589232"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  def caveats
    <<~EOS
      Run cogenity update once to move this Homebrew installation to ~/.local/bin.
      The migration checks the replacement and your shell PATH before removing the formula.
      Existing mise installations stay unchanged.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

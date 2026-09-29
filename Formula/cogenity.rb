class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.3/cogenity-darwin-arm64"
      sha256 "580a2242118618da897d86523df27a6f863dc0fcff9514676c27c94c04a69ce3"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.3/cogenity-darwin-x64"
      sha256 "b1a3370e2435f2409489b7c83b6bd559ddf559345d4508edc61475fd269d1aeb"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.0/cogenity-darwin-arm64"
      sha256 "55b04b4cd4e5490c71aeb156a86f96985ed4f932e262e8a3a9da84cde8fdef8d"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.0/cogenity-darwin-x64"
      sha256 "0d15b87d30fcdfb863c22c51b33842fa52489a2e96467bf18331537e7a93a711"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

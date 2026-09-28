class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.34.0/cogenity-darwin-arm64"
      sha256 "4cb5a22b3f2343798d94026875d918de714ed89d38ca0915d1fa45794c80e928"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.34.0/cogenity-darwin-x64"
      sha256 "a2c5b247ae1450f07a8d4302b1dd509598efca5d06c75baacea18d1859b4c861"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

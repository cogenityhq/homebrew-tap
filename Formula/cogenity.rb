class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.34.1/cogenity-darwin-arm64"
      sha256 "967d36d747a1ca032961e90c91fa08eb04bb83e5afbec3749da0702421594707"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.34.1/cogenity-darwin-x64"
      sha256 "95e3f6e23d7daa24923fe0dd644a77fa7e14b96e46552300bda4d6c5495468d7"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

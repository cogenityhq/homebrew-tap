class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.4/cogenity-darwin-arm64"
      sha256 "81bbe733cee714b5f276088de3488cad34577abe841cf548dd622a5e5fc9ff2d"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.35.4/cogenity-darwin-x64"
      sha256 "5ee066a77a5ad5db400ad88acbec01d87814a30b6b0f8494d41a48537518c396"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

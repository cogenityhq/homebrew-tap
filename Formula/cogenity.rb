class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.33.0/cogenity-darwin-arm64"
      sha256 "ece12ff9424cb3e0928c120003f993fb77f2b43b75af2a22c87e4d10f6357673"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.33.0/cogenity-darwin-x64"
      sha256 "c401ca58f008c479f04e9f5d2afa60ad0ceac527d1ef8ec8f639f24392a2ab4d"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

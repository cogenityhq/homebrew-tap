class Cogenity < Formula
  desc "Cogenity by Kenneth Lynne, a multi-account manager for Claude Code and Codex"
  homepage "https://cogenity.sh"
  license :cannot_represent

  depends_on macos: :ventura

  on_macos do
    on_arm do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.32.0/cogenity-darwin-arm64"
      sha256 "92eb24cf5dc9051e9b1ac8d5089456729e1d5a1297beaaa6c9f894e16fe527f7"
    end

    on_intel do
      url "https://github.com/kennethlynne/cogenity/releases/download/v0.32.0/cogenity-darwin-x64"
      sha256 "dedb82431281aadf17c0f5e0d8e76614c1064cf58f9b7e2c5b0cca004bafd6ad"
    end
  end

  def install
    bin.install Dir["cogenity-darwin-*"].first => "cogenity"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cogenity --version")
  end
end

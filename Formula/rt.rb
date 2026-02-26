class Rt < Formula
  desc "rt is a CLI to run tasks interactively across different task runners"
  homepage "https://github.com/unvalley/rt"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unvalley/rt/releases/download/v0.1.9/rt-cli-aarch64-apple-darwin-v0.1.9.tgz"
      sha256 "5fae30c6de48524c9b9597c252234323e2331daed7f36f64fc2b976771bdd515"
    end
  end

  def install
    bin.install "rt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rt --version")
  end
end

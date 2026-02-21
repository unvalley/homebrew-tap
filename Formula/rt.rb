class Rt < Formula
  desc "rt is a CLI to run tasks interactively across different task runners"
  homepage "https://github.com/unvalley/rt"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unvalley/rt/releases/download/v0.1.8/rt-cli-aarch64-apple-darwin-v0.1.8.tgz"
      sha256 "d68438241eb14fc0f97f13b53dbad99ff2a4a5e7c6250ad63e3012dd3e1f5050"
    end
  end

  def install
    bin.install "rt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rt --version")
  end
end

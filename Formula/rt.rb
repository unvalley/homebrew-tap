class Rt < Formula
  desc "rt is a CLI to run tasks interactively across different task runners"
  homepage "https://github.com/unvalley/rt"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/unvalley/rt/releases/download/v0.1.6/rt-cli-aarch64-apple-darwin-v0.1.6.tgz"
      sha256 "aa34807d8ac7f8421f0f63b97914e876fcf4389fcfb4b4839fc40e80bc413f12"
    end
  end

  def install
    bin.install "rt-cli-aarch64-apple-darwin-v0.1.6/rt" => "rt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rt --version")
  end
end

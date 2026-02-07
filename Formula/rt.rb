class Rt < Formula
  desc "Interactive task runner that abstracts away various task runner file formats"
  homepage "https://github.com/unvalley/rt"
  url "https://github.com/unvalley/rt/archive/refs/tags/v0.1.6.tar.gz"
  sha256 "a924c3d725da61a26b2e4f886d7c765cf7c68d4abd7c68fb6ab542c58a945434"
  license "MIT"
  head "https://github.com/unvalley/rt.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rt --version")
  end
end

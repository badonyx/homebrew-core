class Gossip < Formula
  desc "Desktop client for Nostr written in Rust"
  homepage "https://github.com/mikedilger/gossip"
  url "https://github.com/mikedilger/gossip.git",
      tag:      "v0.8.0",
      revision: "c9bb3704e94e105d7cf97de67e89ccf7f01ef69b"
  license "MIT"
  head "https://github.com/mikedilger/gossip.git", branch: "master"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args, "--features", "lang-cjk"
  end

  test do
    shell_output("#{bin}/gossip help &>/dev/null", 101)
  end
end

class Tinyjam < Formula
  desc "Jam 2 NPR Tiny Desks"
  homepage "https://github.com/aryakaul/tinyjam"
  url "https://github.com/aryakaul/tinyjam/archive/refs/tags/0.1.0.tar.gz"
  version "0.1.0"
  sha256 "d7bb417d33829f9763555ecc01b309ff836ce6929f74d66d71d1721fb2e48a70"
  license "MIT"
  head "https://github.com/aryakaul/tinyjam.git", branch: "main"

  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    bin.install "tinyjam"
    prefix.install "LICENSE"
  end

  test do
    assert_match "Jam to tiny desks with tinyjam", shell_output("#{bin}/tinyjam --help 2>&1")
  end
end

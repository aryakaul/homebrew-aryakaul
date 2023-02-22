class Tinyjam < Formula
  desc "Jam 2 NPR Tiny Desks"
  homepage "https://github.com/aryakaul/tinyjam"
  url "https://github.com/aryakaul/tinyjam/archive/refs/tags/0.1.2.tar.gz"
  version "0.1.2"
  sha256 "90eb7c13ea220f9220e2fa244c9b90b19bb664282b2c62852ef3db6978e87acb"
  license "MIT"
  head "https://github.com/aryakaul/tinyjam.git", branch: "main"

  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    bin.install "tinyjam"
  end

  test do
    assert_match "Jam to tiny desks with tinyjam", shell_output("#{bin}/tinyjam --help 2>&1")
  end
end

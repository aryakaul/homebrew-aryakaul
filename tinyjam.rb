class Tinyjam < Formula
  desc "Jam 2 NPR Tiny Desks"
  homepage "https://github.com/aryakaul/tinyjam"
  url "https://github.com/aryakaul/tinyjam/archive/refs/tags/0.1.1.tar.gz"
  version "0.1.1"
  sha256 "61747a330d9404d2339816792c37d5aa287f12b78ac68f57f1d4df3bcfe94dd4"
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

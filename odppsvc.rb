require 'formula'
class Odppsvc < Formula
  desc "Odppsvc Description "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/od369/archive/refs/tags/odppsvc1.0.tar.gz"
  sha256 "ba0d30209212b83e3b7e88f086691f2762cfb48c80a6acabaf193bd7d4d3dc28"
  license "bdiplus-onedata-2022"

  # depends_on "cmake" => :build
  depends_on "bash"

  def install
#    system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install "odppLink"
    bin.install "odppsvc.jar"
    bin.install "odppsvc"
    bin.install "config"
    bin.install "bin"
    system "echo","If successfully installed run odppLink from your command line to link this platform with OneDATA.Plus environment"
  end

  test do
    system "echo","If successfully installed run odppLink from your command line to link this platform with OneDATA.Plus environment"
  end
end

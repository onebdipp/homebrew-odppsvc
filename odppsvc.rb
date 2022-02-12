require 'formula'
class Odppsvc < Formula
  desc "Odppsvc Description "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/od369/archive/refs/tags/odpp7.0.tar.gz"
  sha256 "51630c49082a7f72fcfd307d12b302cc468017b1ee76529064fcc36cfeed1b2c"
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
  end

  test do
    system "echo","If successfully installed run odppLink from your command line to link this platform with OneDATA.Plus environment"
  end
end

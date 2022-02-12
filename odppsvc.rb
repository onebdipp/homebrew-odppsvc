require 'formula'
class Odppsvc < Formula
  desc "Odppsvc Description "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/od369/archive/refs/tags/Linux6.0.tar.gz"
  sha256 "9a69371730bb427ddf0fc4cebe28c9e53b57f13375fa0a1a644a265d819fdd39"
  license "bdiplus-onedata-2022"

  # depends_on "cmake" => :build
  depends_on "bash"
  depends_on java: '8'

  def install
#    system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install "odppLink"
    bin.install "config"
    bin.install "bin"
  end

  test do
    echo "If successfully installed run odppLink from your command line to link this platform with OneDATA.Plus environment"
  end
end

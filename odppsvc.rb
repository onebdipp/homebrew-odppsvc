require 'formula'
class Odppsvc < Formula
  desc "Odppsvc Description "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/od369/archive/refs/tags/linuxv5.tar.gz"
  sha256 "6341e83a3347c299099147ecc8582e27ba88eff3d816c29457b95f856dcd029b"
  license "bdiplus-onedata-2022"

  # depends_on "cmake" => :build
  depends_on "bash"

  def install
#    system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install "odppLink"
    bin.install "config"
    bin.install "odppsvc.jar"
  end

  test do
  
    system "odppLink"
  end
end

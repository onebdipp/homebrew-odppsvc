require 'formula'
class Odppsvc < Formula
  desc "ODPP Client platform service manager "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/clientcores/archive/refs/tags/odppcore1.0.tar.gz"
  sha256 "0d0dfabe59a15b978898a92b43eaf9821c0f553c9c523e148cf29e6a5c0019be"
  license "bdiplus-onedata-2022"

  # depends_on "cmake" => :build
  depends_on "bash"

  def install
    bin.install "odppLink"
    bin.install "odppsvc.jar"
    bin.install "odppsvc"
    bin.install "config"
    bin.install "lib"
    system "echo"," "
    system "echo","Check if the installation is successful using command - 'brew info odppsvc'"
    system "echo","If successfully installed theb run command `odppLink` from your command line to link this platform with OneDATA.Plus environment"
    system "echo"," "
  end

  test do
    system "echo","Done"
  end
end

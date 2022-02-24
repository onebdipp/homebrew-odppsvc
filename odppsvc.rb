require 'formula'
class Odppsvc < Formula
  desc "ODPP Client platform service manager "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/clientcores/archive/refs/tags/odppcore5.0.tar.gz"
  sha256 "0e962ef5f9012a012f846250a5131a9157358b69bcd6c729a90fb4cad6b50f74"
  license "bdiplus-onedata-2022"

  # depends_on "cmake" => :build
  depends_on "bash"

  def install
    bin.install "odppLink"
    bin.install "odppStationSvc"
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

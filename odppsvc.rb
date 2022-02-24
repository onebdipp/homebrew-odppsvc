require 'formula'
class Odppsvc < Formula
  desc "ODPP Client platform service manager "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/clientcores/archive/refs/tags/odppcore6.0.tar.gz"
  sha256 "ed704d5dbbac30c6b31140e1a7f24c3ae23dc78d1f8de6bb82ffbd4b1ac43603"
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

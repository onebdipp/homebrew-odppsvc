require 'formula'
class Odppsvc < Formula
  desc "ODPP Client platform service manager "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/clientcores/archive/refs/tags/odppcoreprod5.0.tar.gz"
  sha256 "6747569858433c946455ac8e9ccafe6fa8cd9eb5e4fd88ae1890154e425a10bc"
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
    system "echo","If successfully installed, then set the environment variable ODPPSVC_HOME with the installation path mentioned in the above command."
    system "echo","Example: export ODPPSVC_HOME=<path>"
    system "echo","Run command `odppLink` from your command line to link this platform with OneDATA.Plus environment"
    system "echo"," "
  end

  test do
    system "echo","Done"
  end
end

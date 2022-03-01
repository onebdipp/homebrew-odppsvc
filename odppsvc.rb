require 'formula'
class Odppsvc < Formula
  desc "ODPP Client platform service manager "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/clientcores/archive/refs/tags/odppcoreprod1.0.tar.gz"
  sha256 "e7a7c4cf5dab7da85839eae92fa08f4cf5982af546f55e9bd3c3057bf27bc265"
  license "bdiplus-onedata-2022"

  # depends_on "cmake" => :build
  depends_on "bash"
  
  cd $HOMEBREW_PREFIX/bin

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

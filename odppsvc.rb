require 'formula'
class Odppsvc < Formula
  desc "Odppsvc Description "
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/od369/archive/refs/tags/v5.0.tar.gz"
  sha256 "122c0cf7472096ad85db358bc8929d64422a3670d94cce5cdcdd0bdc50933330"
  license "MIT"

  # depends_on "cmake" => :build
  depends_on "bash"

  def install
    system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install "odppLink"
    bin.install "odppsvc.properties"
    bin.install "odppsvc.jar"
  end

  test do
  
    system "false"
  end
end

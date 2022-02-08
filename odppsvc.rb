require 'formula'
class Odppsvc < Formula
  desc "Odppsvc"
  homepage "bdiplus.com"
  url "https://github.com/onebdipp/od369/archive/refs/tags/v5.0.tar.gz"
  sha256 "122c0cf7472096ad85db358bc8929d64422a3670d94cce5cdcdd0bdc50933330"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "odppLink"
    config.install "odppsvc.properties"
    bin.install "odppsvc.jar"
  end

  test do
  
    system "false"
  end
end

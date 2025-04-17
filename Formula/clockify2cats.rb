# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Clockify2cats < Formula
  desc "CLI for exporting clockify data and generate a SAP CATS report as csv"
  homepage "https://github.com/marvincaspar/clockify2cats"
  url "https://github.com/marvincaspar/clockify2cats/releases/download/3.1.0/clockify2cats_Darwin_arm64.tar.gz"
  sha256 "12ee30db0f4b5bdfdbde66d19b0f271760b3afbd538a6bd4bfa755b9e02fcd8f"
  license "Apache-2.0"

  # depends_on "cmake" => :build

  # Additional dependency
  # resource "" do
  #   url ""
  #   sha256 ""
  # end

  def install
    # Remove unrecognized options if they cause configure to fail
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", "--disable-silent-rules", *std_configure_args
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install "clockify2cats"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test clockify2cats`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system bin/"program", "do", "something"`.
    system "false"
  end
end

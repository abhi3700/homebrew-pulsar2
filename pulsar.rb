class Pulsar < Formula
  desc "The Subspace Network CLI for Nodes and Farmers"
  homepage "https://github.com/subspace/pulsar"
  url "https://github.com/subspace/pulsar/releases/download/v0.7.4-alpha/pulsar-macos-aarch64-v0.7.4-alpha.zip"
  sha256 "2646d0f68049747e999a2abbbbec6fb0221f9537c14d5d3148577420165e64f5"
  license "MIT"

  depends_on "llvm"
  depends_on "clang"
  depends_on "cmake"

  def install
    # Extracted binary 'pulsar-macos-aarch64-v0.7.4-alpha' will be named 
    # Rename it to 'pulsar' and copy it to the bin directory
    bin.install "pulsar-macos-aarch64-v0.7.4-alpha" => "pulsar"
  end

  test do
    # Optionally, add a test block here to verify the installation
    system "#{bin}/pulsar", "--version"
  end
end

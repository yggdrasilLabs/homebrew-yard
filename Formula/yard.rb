class Yard < Formula
  desc "Data engineering CLI - plugin-based provider architecture for cloud data pipelines"
  homepage "https://github.com/sean-mca/yard"
  version "2.1.3"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "45c50ea949ace39a03fd3410961394926e6702adaab836ea6586fcbaece60dc3"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "9b25fb6aba95afe966202746f3687758b7a0590fc3d3f1601a0b54c3e6d4f78c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "32b21166a89c30467614e4b96188eb9a305da229197cf613d77f9bdb1fa613cc"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0b8affc2a8c3ee83c86aa10f45cc3d1af6a070cf7f5d8f38f636b3cfd5444b09"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

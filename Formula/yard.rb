class Yard < Formula
  desc "Data engineering CLI - plugin-based provider architecture for cloud data pipelines"
  homepage "https://github.com/sean-mca/yard"
  version "2.1.0"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "d9b56510820aa8f95c91052b144f0927d1e4578969c054c764d20bc35aec284f"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "c05b025d9a705648c1b72db149890228451d4d71f8c9546e733b0e39bacbdb2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c728d4ee9dfc99ca3074ac84f3d35de6bf9ee36c77cbd387bb1eb664d7777dfa"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b124ca4f355079211ac20ab23ac30a254216eef7bd63f7636cda7c1a0e7377ee"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

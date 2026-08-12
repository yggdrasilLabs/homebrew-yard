class Yard < Formula
  desc "Data engineering CLI - hierarchical config, Glue/EMR providers, DAG generation"
  homepage "https://github.com/sean-mca/yard"
  version "1.14.2"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f570f83d71c0bc4ebc7dde761c8f3af3e55b557f3e30c46b4b3a12371fac2155"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "53fdb9080b09da8cc6f43b3cb802645ab5542511fba29d3a56476b6e40b2fcf0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba714e7882a87a11e28e02672a2649d70e4fc63643dfb61febe0b328465a8cfd"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b40093ce9d3bb0f8ad4a6e0e5660391efba9086dfa24f0227522d73b06c0aa43"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

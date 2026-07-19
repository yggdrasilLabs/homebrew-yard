class Yard < Formula
  desc "Data engineering CLI - hierarchical config, Glue/EMR providers, DAG generation"
  homepage "https://github.com/sean-mca/yard"
  version "0.7.3"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f436a64cfff93217cc58f8c3b708214ec13286ccb909042ae967cea05b479845"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "283da9255b7477406a48f9d8fef51f9dcbd09ca202d3103c7c7bc5675a544edd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a49988370ff7b29da5a400a0fc30753e36927f980aa3a73635b30c476611a908"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90cb35ae4b85484b8c01319e596a974583f7dec4206a6f77c6621060f0999662"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

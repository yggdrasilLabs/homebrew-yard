class Yard < Formula
  desc "Data engineering CLI - plugin-based provider architecture for cloud data pipelines"
  homepage "https://github.com/sean-mca/yard"
  version "2.1.5"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4d107d632a00e17e7fe0e6107d84e1307c1e1a7825cc0c4ffaf3e81aa21f676e"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "fbfd3a2f6dc5537880bbea0d27bc0aa671588b175cc850c6ace025ba3f6993a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b2a4ce9e1ae579f7a7f6fe7b4f66455fc2db7a36fb64da3259933ea41d2edd03"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35ce6ba7643cd2c6da8bd443403bba95c9325102d749eb50d199bee56c8083f2"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

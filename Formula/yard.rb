class Yard < Formula
  desc "Data engineering CLI - hierarchical config, Glue/EMR providers, DAG generation"
  homepage "https://github.com/sean-mca/yard"
  version "1.15.0"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "49884f23f3e2bf2593a183ec7476fc4204eb1d4c66fbb21d2620bf4d15c12468"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "baf26a9b131c159399202cff366fdc0352e705abb12c5b4dc2c4b521f9979671"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9730fa06e0068aba5aa62f4f84818f3e1d86bc3d41e0addb0d8881dbe27980ff"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42987534c50a662cfdbe60d03fc6e8ebe0bf5fa309d6cd0a14ae8bd48790336d"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

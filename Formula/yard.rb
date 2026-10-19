class Yard < Formula
  desc "Data engineering CLI - plugin-based provider architecture for cloud data pipelines"
  homepage "https://github.com/sean-mca/yard"
  version "2.1.2"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1181404e5cc0971a8f431b34115187fac0503f0572bd75da0febd78b8a0767b0"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "db896cef1f0e5da1ce65f1ebe868afdfbbd521978965516fad4246ad4c4c7322"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b181e0e53f7c722d9e6b32efe7f8357003aca79ada885655f48c23a41689c413"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8db90234550c666a7a6602b30a184549281f03f8952ec76600065d193917f964"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

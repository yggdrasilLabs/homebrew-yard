class Yard < Formula
  desc "Data engineering CLI - plugin-based provider architecture for cloud data pipelines"
  homepage "https://github.com/sean-mca/yard"
  version "2.1.1"
  license "BUSL-1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "c92ef7a750263b27ce448332aee1906e8e4be73f5ed83e94d51b1799ad970b33"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "86e074a600edda3daa3a4b48bd40ded20a9756736acdc4dbb612da8948edb590"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6de63878af18f2e0a9ef5fafa1af82476159f502e9adb4cb5904eb2b7c88731a"
    else
      url "https://github.com/sean-mca/yard/releases/download/v#{version}/yard-#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fc6e24986e019594e5ca826fc4522a40336dd8610cc291908007c04a76a36d05"
    end
  end

  def install
    bin.install "yard"
  end

  test do
    system "#{bin}/yard", "--version"
  end
end

class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.7.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.1/zburn_darwin_arm64"
    sha256 "35203e76b9903444c1e0dc3f98bc33648aaabb930d7a3c8d291ff27d1724025a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.1/zburn_darwin_amd64"
    sha256 "30147f57ea4675ee07c2d438d4812d14bc8aff2e8f2b1ca2a7ebb1f9f58015da"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.1/zburn_linux_arm64"
    sha256 "0ea3155ff08c3ee1fe13c39efff1a569f9495e04dc60050af32cf1030b0a5fb9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.1/zburn_linux_amd64"
    sha256 "40f0edcefbce13ff11d3f85d035cdf8a41e47272f5e6a67bca37d62d79f787ec"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "zburn_darwin_arm64" => "zburn"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "zburn_darwin_amd64" => "zburn"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "zburn_linux_arm64" => "zburn"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "zburn_linux_amd64" => "zburn"
    end
  end

  test do
    assert_match "v0.7.1", shell_output("#{bin}/zburn --version")
  end
end

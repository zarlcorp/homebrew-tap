class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.1.0/zburn_darwin_arm64"
    sha256 "2e4aa4ca65804dab269a082992e7a116d4e664653790065fc29a513ba28a1c38"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.1.0/zburn_darwin_amd64"
    sha256 "d9eb070cc26ed299c4ca6fe600624f261238a0f932eb3f922dd17fe6fb47d0e5"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.1.0/zburn_linux_arm64"
    sha256 "9e4631a7c2c215dce2a6c9a2211b1da4723df6e5c86a8620213ebe6f528ba6e1"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.1.0/zburn_linux_amd64"
    sha256 "959f10fbbd30dcaeb1d5c559a115ffcde1e5cb66908d5bc25b0bfbc60abcb3d1"
  end

  def install
    bin.install "zburn"
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/zburn version")
  end
end

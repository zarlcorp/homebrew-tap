class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.7.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.0/zburn_darwin_arm64"
    sha256 "415ba1b506efc826fde55c1d34090805135f5ad70f69955841181ed302f57b1d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.0/zburn_darwin_amd64"
    sha256 "e5ff72891c9deab625b6453014c4ddbc836c6f193c7b28a17d867c4bc46e88ca"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.0/zburn_linux_arm64"
    sha256 "9ccabdd639faeeafd2cc768034de05ad90d7aa030d5583f2a794f28677449d9b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.0/zburn_linux_amd64"
    sha256 "cc8d52fdda3d9bbf310d4b039ea41aa55c145330dfbd34a0cc558f0e87e77878"
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
    assert_match "v0.7.0", shell_output("#{bin}/zburn --version")
  end
end

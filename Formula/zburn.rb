class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.5.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.3/zburn_darwin_arm64"
    sha256 "32fd1cabf442a5e4912021dba3495e8135840081d3e6f4324807c49fdb33efcb"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.3/zburn_darwin_amd64"
    sha256 "c175823925bf3656696452fdef531e6d8fcce72a10ae52c03d6b3cfd7e20ba67"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.3/zburn_linux_arm64"
    sha256 "10394895d3a86593ef6dd7a591b3154ffb62773353bf9fba0c5bdefc18264f64"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.3/zburn_linux_amd64"
    sha256 "cb2020a21c616be2ad48c9272f066671e10a827d4d00239ac510ec16b6ddbc1d"
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
    assert_match "v0.5.3", shell_output("#{bin}/zburn --version")
  end
end

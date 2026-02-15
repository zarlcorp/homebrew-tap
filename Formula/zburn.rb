class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.3.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.2/zburn_darwin_arm64"
    sha256 "64a8a1a4077a747ff16d6b659cc96178100bb35135335c073db68c688b0e25ef"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.2/zburn_darwin_amd64"
    sha256 "10e87bf97a4423feeb26da3ca097bab2ff53dd1b95546ff22f79706f221fab60"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.2/zburn_linux_arm64"
    sha256 "bd71d98db7bda959b8c9d82b320aef440d4828adc2109123a7837946d4b78c76"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.2/zburn_linux_amd64"
    sha256 "76412ff3d4aa3e1089042f9f2b1c16667cad283d894e4ef4b055cd737f12e624"
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
    assert_match "v0.3.2", shell_output("#{bin}/zburn --version")
  end
end

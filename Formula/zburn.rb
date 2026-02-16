class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.6.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.6.0/zburn_darwin_arm64"
    sha256 "89cb3b9055c038c8d144b04cb2e0dfb25d28c2d088ff92c46104b8e464bbbd5b"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.6.0/zburn_darwin_amd64"
    sha256 "74b0e402f244524a89a8a8d66474b5dfd9611559eeff6c08e46fdb1420ae9ce7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.6.0/zburn_linux_arm64"
    sha256 "37142508082d9e97af960765a125974a5f12ac7851fa269fdd5d2c79730a24ee"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.6.0/zburn_linux_amd64"
    sha256 "0bd6c26b33c44fab616d2feda0cb03e562c720689e5d32fcc994d6962c07aaf2"
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
    assert_match "v0.6.0", shell_output("#{bin}/zburn --version")
  end
end

class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.5.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.0/zburn_darwin_arm64"
    sha256 "87a8f393d422ddd266c9e4b40fcb4fd75d414aed4830195d4e3bd3fc9b2abacc"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.0/zburn_darwin_amd64"
    sha256 "6d82197bdc83cac7b69c8ece4de661b07ebcb4dc92075533b951803d38e6db36"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.0/zburn_linux_arm64"
    sha256 "fbc0d57ecb9c1fe7435f494afa848d482e3430d7f4da1b3f140d02b30c07a778"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.0/zburn_linux_amd64"
    sha256 "74d27ee126a2da61bfad119fb13420e90a8298bc2417a20b1146a193d855579e"
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
    assert_match "v0.5.0", shell_output("#{bin}/zburn --version")
  end
end

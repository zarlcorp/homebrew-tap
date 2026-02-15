class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.3.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.0/zburn_darwin_arm64"
    sha256 "b08593b875e41a9df9115efc6ece15448f47889f40c4a101e0dcf62e0ba4ab3a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.0/zburn_darwin_amd64"
    sha256 "cfe0e818590ae4957422f70bbbaf1ce9e96cdc325803a331fa5d441da48be104"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.0/zburn_linux_arm64"
    sha256 "10a19af9ee5ea5183708df443957341f838b339210c566efc089eb869a6d102b"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.3.0/zburn_linux_amd64"
    sha256 "ac2736e128481d642a1d7434619fef7a1114300e0006b27696bb46ecadf40b9a"
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
    assert_match "v0.3.0")
  end
end

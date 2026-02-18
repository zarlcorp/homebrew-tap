class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.7.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.3/zburn_darwin_arm64"
    sha256 "2cf5e9840fdd34efaf3b40a5b0f3d6bc2b2b2010131df9a3aa0561104e89cec6"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.3/zburn_darwin_amd64"
    sha256 "4a00985e0dd3f7769785e362d10f495875b5113117a11eddd350b473e0d907d7"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.3/zburn_linux_arm64"
    sha256 "a7389af39154256cc16859f10cd47c1800bd6d49ab699972025565b6214cb409"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.3/zburn_linux_amd64"
    sha256 "2ae549066c52feeb1ce8d8a31a0706d1c764067c7702d4316b883545e5c80478"
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
    assert_match "v0.7.3", shell_output("#{bin}/zburn --version")
  end
end

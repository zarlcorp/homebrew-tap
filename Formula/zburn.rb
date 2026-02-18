class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.7.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.2/zburn_darwin_arm64"
    sha256 "3d5fd3f91371e6de61a01272beb28ab6d5f98bbb2091d6dd635f444841077d71"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.2/zburn_darwin_amd64"
    sha256 "c5aaceedc326c9dbf2b5fb4ab07cadd1e2a83679ef57eaf8080bf72174d7fee3"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.2/zburn_linux_arm64"
    sha256 "9601dbb24f87f4c372d8be25095645a5bf1d503a6b8955dc7b4f7b9e62909c72"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.2/zburn_linux_amd64"
    sha256 "6722bcb5fb0479095ab59f362407db1443fe88a460c38027d0cb1bc5cc4049e2"
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
    assert_match "v0.7.2", shell_output("#{bin}/zburn --version")
  end
end

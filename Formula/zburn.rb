class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.4.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.4.0/zburn_darwin_arm64"
    sha256 "87611b50b95ec8cefe73c7efb230b75f156f26173d4c24ac7c087de9fc328a06"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.4.0/zburn_darwin_amd64"
    sha256 "455e53b80f18407b06631ebca0e3b2280167eb57f38f9cdcb1dfa4e4dc242c3e"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.4.0/zburn_linux_arm64"
    sha256 "ba0d35360313adb683e51c618673169c98517df4dcad118671d22ed603c55f0a"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.4.0/zburn_linux_amd64"
    sha256 "b1ce57c93484f570b33d241fa2c9e1bdb1d0bb66bf02137bd686707bdbff66fa"
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
    assert_match "v0.4.0", shell_output("#{bin}/zburn --version")
  end
end

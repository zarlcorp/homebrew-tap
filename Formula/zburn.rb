class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.5.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.1/zburn_darwin_arm64"
    sha256 "14f69e52a28f9fb2e904e7a34d553acdab9bf3dca24e8ca9ea1f597d93e245ea"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.1/zburn_darwin_amd64"
    sha256 "73f38cd3294d056d3e5980de991fe021ad40fe4c2725596da70e374a5c3cfb5c"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.1/zburn_linux_arm64"
    sha256 "13a18fe316fba6ea39a73420fd2dea7e87e7edc6fee752e335a5cb7fe56e3fef"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.1/zburn_linux_amd64"
    sha256 "41a77b87d1b329e6a47b1a683929ddc6d28a599e2d353adc1d21dd681ffee42a"
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
    assert_match "v0.5.1", shell_output("#{bin}/zburn --version")
  end
end

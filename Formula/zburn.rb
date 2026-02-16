class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.5.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.2/zburn_darwin_arm64"
    sha256 "313c1ed3076c8c1745586ae8e1b942ceda06d42a1fc87d743cf5105e8c5ce527"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.2/zburn_darwin_amd64"
    sha256 "67e1234ef320a634cf382e3ff77e9220f9663d8dff4e4d7b3c7b4ff33b149d89"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.2/zburn_linux_arm64"
    sha256 "bee91cba8cae6f5126a4aecca805236032343c5adb75a1fb0e44e7523294a67e"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.5.2/zburn_linux_amd64"
    sha256 "5faf07972e7495dd1e41f8dc21f8098b072ab878e843a715db955c8213d6026d"
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
    assert_match "v0.5.2", shell_output("#{bin}/zburn --version")
  end
end

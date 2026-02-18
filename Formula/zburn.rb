class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"
  version "0.7.4"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.4/zburn_darwin_arm64"
    sha256 "778e701ccef8724c70b3be70869b26be8a3a1012a758969d26fdb9487843b9a3"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.4/zburn_darwin_amd64"
    sha256 "5aac028df578bc64e72a380d940bbdc339fd1b9dd6f272eb25d021e1b267a9d1"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.4/zburn_linux_arm64"
    sha256 "210d3d6d3323b835144b2823316e909a90b117f97c2e020aa5d005cb9a328722"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zburn/releases/download/v0.7.4/zburn_linux_amd64"
    sha256 "dda9c3319a3c5a7eca8855f750ae1cf385ad5cbac32e6908804ffe806dade5e9"
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
    assert_match "v0.7.4", shell_output("#{bin}/zburn --version")
  end
end

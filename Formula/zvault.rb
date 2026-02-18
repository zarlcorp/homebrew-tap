class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_darwin_arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_darwin_amd64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_linux_arm64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_linux_amd64"
    sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "zvault_darwin_arm64" => "zvault"
    elsif OS.mac? && Hardware::CPU.intel?
      bin.install "zvault_darwin_amd64" => "zvault"
    elsif OS.linux? && Hardware::CPU.arm?
      bin.install "zvault_linux_arm64" => "zvault"
    elsif OS.linux? && Hardware::CPU.intel?
      bin.install "zvault_linux_amd64" => "zvault"
    end
  end

  test do
    assert_match "v0.1.0", shell_output("#{bin}/zvault version")
  end
end

class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_darwin_arm64"
    sha256 "33ac505d4c7677eb765836004d02b61747ec8d1b2f18cfc0a73bf110aed206fe"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_darwin_amd64"
    sha256 "246de03b9f065de674bed7022077145a114c0b82f6e825d707d453e07c02fffa"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_linux_arm64"
    sha256 "4c9ac839a5cb552c133577379be647fa9fe56d5bba7d7c6f096e47151894113c"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.0/zvault_linux_amd64"
    sha256 "b451ff81248d688bc6fab44997b8f3ea2e3ab3c7556df84078111ee4fa8a1231"
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

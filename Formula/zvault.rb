class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.3/zvault_darwin_arm64"
    sha256 "20771d67a575cab5b07286c7d2fb69f07a5d623d2cca0af44fb521045357c657"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.3/zvault_darwin_amd64"
    sha256 "679045384d7b4a94fbe2b32e43e1e3b4bcb8cdfc48b2917b86b11b03747a873b"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.3/zvault_linux_arm64"
    sha256 "0f93b697e3505140433d1ec797b3631037948de9826ad7c72e3a54de56250bb9"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.3/zvault_linux_amd64"
    sha256 "853a47be9889fdb1fba090fdb8a90b34447dc9e3d002455fe4e4aaa11cd129b6"
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
    assert_match "v0.1.3", shell_output("#{bin}/zvault version")
  end
end

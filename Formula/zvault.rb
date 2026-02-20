class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.5"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.5/zvault_darwin_arm64"
    sha256 "e8f5ca4d75de6d1d4c1e6078a002064b6e016a1d5c6d1d6db475789ab50da1f8"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.5/zvault_darwin_amd64"
    sha256 "aaf084a5c86973f94303ab5be327504ba45c673c8ab916227d15209f3d83bfdc"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.5/zvault_linux_arm64"
    sha256 "973a029d03abf542383d1fa919b39a2aefbf37d8a9e393238afa1da33d9fb355"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.5/zvault_linux_amd64"
    sha256 "2c15b31e1417fb626c4031aa4c8b86be0fb277b85f15747a33bcc7c7aa65d6da"
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
    assert_match "v0.1.5", shell_output("#{bin}/zvault version")
  end
end

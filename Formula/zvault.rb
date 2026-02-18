class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.2"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.2/zvault_darwin_arm64"
    sha256 "4786a21a838ba15e47fb6e7b308a8fe830af805760adb5dc08f1179a2029114f"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.2/zvault_darwin_amd64"
    sha256 "0fad61aaa1e49bb176f4a50bd11a4cfc40e5e7e608f10604ea6da09ddf11ac0d"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.2/zvault_linux_arm64"
    sha256 "10c5c6a2f6c8875cfd79ae0a44285d48e13fd92c23d93c8efccd541434c8208d"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.2/zvault_linux_amd64"
    sha256 "911a4de660e709cd82234f9549bfaa3cea4a457bf659759d7012069884bb9271"
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
    assert_match "v0.1.2", shell_output("#{bin}/zvault version")
  end
end

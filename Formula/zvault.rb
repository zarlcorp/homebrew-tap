class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.1"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.1/zvault_darwin_arm64"
    sha256 "ea07715062a5dd7a476e6fbe29af4368caf6d256f16db8c88343ce4563a7812d"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.1/zvault_darwin_amd64"
    sha256 "c995ce0c3c9e8c08850ffef748c235ff8628fe98c2f4504d10c91249ba24f344"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.1/zvault_linux_arm64"
    sha256 "3177d95e4f29b8e093cc2166ea5058ed1df4787229147365e284d861236afcf8"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.1/zvault_linux_amd64"
    sha256 "3c9f6b47b4c3e57bb5a32ff2de85a5ce12517c27fc7aec3d351a2f521bd8c6dc"
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
    assert_match "v0.1.1", shell_output("#{bin}/zvault version")
  end
end

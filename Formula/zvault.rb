class Zvault < Formula
  desc "Encrypted vault for secrets and tasks — CLI and TUI"
  homepage "https://github.com/zarlcorp/zvault"
  license "MIT"
  version "0.1.6"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.6/zvault_darwin_arm64"
    sha256 "a023e2ffe15085b5733863896e440a3679b427ba405f62b58d2f37209c2b6188"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.6/zvault_darwin_amd64"
    sha256 "7740b750318bb8b167886724bd504c37341b001462ce4fa2786eed7bdb70e1e8"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.6/zvault_linux_arm64"
    sha256 "70c4616f56241e53184852c315557031b7881f386a6a68ab851ddc66fd163b63"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/zarlcorp/zvault/releases/download/v0.1.6/zvault_linux_amd64"
    sha256 "14bcf927d7b06a542ebcdf8d95fd5c8dafc517d9b62deffaae94fa206425193a"
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
    assert_match "v0.1.6", shell_output("#{bin}/zvault version")
  end
end

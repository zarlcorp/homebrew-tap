class Zburn < Formula
  desc "Disposable identity generator — burner emails, names, passwords"
  homepage "https://github.com/zarlcorp/zburn"
  license "MIT"

  # GoReleaser populates version, url, and sha256 automatically on release.
  # This placeholder exists to establish the Formula directory structure.
  # Do not install this formula directly until the first release.

  def install
    bin.install "zburn"
  end

  test do
    assert_match "zburn", shell_output("#{bin}/zburn version")
  end
end

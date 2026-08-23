class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  license "MIT"

  depends_on "aria2"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.5.0/protopeek_0.5.0_osx_arm64.tar.gz"
      sha256 "abf7034b144ac5a066ca9beb21dbd68a74e820df2fae45fcd292bff7b6d4eebb"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.5.0/protopeek_0.5.0_osx_x86_64.tar.gz"
      sha256 "3188cf88876e99c23f0241e3d6d070e7f03fe904fdfdeabe841bde46b9d46ad7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.5.0/protopeek_0.5.0_linux_arm64.tar.gz"
      sha256 "34d1f68156716e158ab23f6928c06310041a3475b9d1425d81ef2b51fc1a6685"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.5.0/protopeek_0.5.0_linux_x86_64.tar.gz"
      sha256 "c90650166ca03396cb8d1685d7960cfd792a40b20d2a29942d41245b5d2e7fa3"
    end
  end

  def install
    bin.install "protopeek", "pp"
    man1.install "man/protopeek.1", "man/pp.1"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/protopeek -version 2>&1")
    assert_match "v#{version}", shell_output("#{bin}/pp -version 2>&1")
    assert_match "aria2 version", shell_output("aria2c --version")
  end
end

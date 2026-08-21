class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.4.0/protopeek_0.4.0_osx_arm64.tar.gz"
      sha256 "2fec3d7b47cf65663e1f101be1a637d561042e8ca421da0dbb557f611c3bf341"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.4.0/protopeek_0.4.0_osx_x86_64.tar.gz"
      sha256 "e77db74973533d026f07950883efefb1e58d9138ed9d43872055f9ba93661e6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.4.0/protopeek_0.4.0_linux_arm64.tar.gz"
      sha256 "adfb865a573af778ebdae08df4ae435ef70fd93dbdcfe973cd3c510355f210ad"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.4.0/protopeek_0.4.0_linux_x86_64.tar.gz"
      sha256 "5b37c336e9ec8f044cf1b9008550f4949942a0805bd416ea4bc59237b77ca202"
    end
  end

  def install
    bin.install "protopeek", "pp"
    man1.install "man/protopeek.1", "man/pp.1"
  end

  test do
    assert_match "v#{version}", shell_output("#{bin}/protopeek -version 2>&1")
    assert_match "v#{version}", shell_output("#{bin}/pp -version 2>&1")
  end
end

class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  license "MIT"

  depends_on "aria2"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.6.1/protopeek_0.6.1_osx_arm64.tar.gz"
      sha256 "c7131df74ecd7ce65586f2069fa848e2f5e2f402466ed72b9a4ca289ae4ce68f"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.6.1/protopeek_0.6.1_osx_x86_64.tar.gz"
      sha256 "e9f2534f1d23fac85fa6a0af5cc5bf6882986709a1c0e7d9e4d518244b37b207"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.6.1/protopeek_0.6.1_linux_arm64.tar.gz"
      sha256 "1957bfef78b15772f77fc6f12545e42ef5f57270236a35fcd4dd36e903c0df96"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.6.1/protopeek_0.6.1_linux_x86_64.tar.gz"
      sha256 "f7ab6d8b70f45940f0a5206f0d78965c2c30ad52040e27f89cffab87415c0ee9"
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

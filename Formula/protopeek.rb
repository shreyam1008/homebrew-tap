class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  license "MIT"

  depends_on "aria2"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.7.0/protopeek_0.7.0_osx_arm64.tar.gz"
      sha256 "26a4164972ae083af11ce96b7d1a2dae49586883d1e21f7977ac57883b1461ee"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.7.0/protopeek_0.7.0_osx_x86_64.tar.gz"
      sha256 "09795dc2cb97ea490027938c8c82b06a16c9905b94fd52d6a43db32e695660fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.7.0/protopeek_0.7.0_linux_arm64.tar.gz"
      sha256 "635986649b2dc6bee5ade661dbce45a4124aafc2bb9dcdd8418ea2ddf9062d00"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.7.0/protopeek_0.7.0_linux_x86_64.tar.gz"
      sha256 "c0bcfa0c36147053e1c9e4def03aea8d827084800596c2eee396e91ab668e90c"
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

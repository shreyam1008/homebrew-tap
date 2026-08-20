class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  version "0.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.1/protopeek_0.3.1_osx_arm64.tar.gz"
      sha256 "b6d5cadc724636f8a762abc01184417d409fd2fe53be7445bbd8539209b03f4c"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.1/protopeek_0.3.1_osx_x86_64.tar.gz"
      sha256 "5bb0fc8da50b746f79082edf732f4163d55cabb5ad5214cbb6a4f5ca5fe9942a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.1/protopeek_0.3.1_linux_arm64.tar.gz"
      sha256 "133655b11e41ac7faa6b4e76770e0b1a48513f6d9f493b86f5cd271bf2ca66a2"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.1/protopeek_0.3.1_linux_x86_64.tar.gz"
      sha256 "c0d3ce04e6011cd298f66de90b59f19150cb1d3c217243da561ff4db5df96432"
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

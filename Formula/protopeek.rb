class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v#{version}/protopeek_#{version}_osx_arm64.tar.gz"
      sha256 "d8c29244d5a1d2800240713da677efe092fa2db8bd789e6ccb214fc537ad4fc9"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v#{version}/protopeek_#{version}_osx_x86_64.tar.gz"
      sha256 "f46fc1bd56ce6602750eed04f3857982c427a6065505d17c8ba39eaffa5e0f53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v#{version}/protopeek_#{version}_linux_arm64.tar.gz"
      sha256 "fef9ef3bc17b7d2a9e81c2cb78983be4be2f7b4fdf5bee458e8f37d417a9b77b"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v#{version}/protopeek_#{version}_linux_x86_64.tar.gz"
      sha256 "b1352d07ca648983771a382ac9456c31bcc8f33f5e0e8adf8346cc4440ee55e5"
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

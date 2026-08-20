class Protopeek < Formula
  desc "Local protocol workbench for gRPC, HTTP, and bounded network evidence"
  homepage "https://protopeek.shreyam1008.com.np/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.2/protopeek_0.3.2_osx_arm64.tar.gz"
      sha256 "78501cb39ae808e3b0c280d2cf1872757a4212c01a1d0423cde4433e4fae553d"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.2/protopeek_0.3.2_osx_x86_64.tar.gz"
      sha256 "935f0114ce5725efea2f0ec4631b239f33b890652dbc1e3586c2d825a2afff48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.2/protopeek_0.3.2_linux_arm64.tar.gz"
      sha256 "74417c15a66d4cdd2762e02236d4399a04a8a7ef36bdbaaf4942d5be66909313"
    end

    on_intel do
      url "https://github.com/shreyam1008/ProtoPeek/releases/download/v0.3.2/protopeek_0.3.2_linux_x86_64.tar.gz"
      sha256 "b7538b537510b0e7fd3921a8d3685b20e18f93aba2626e84c8c57f3182b4acb4"
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

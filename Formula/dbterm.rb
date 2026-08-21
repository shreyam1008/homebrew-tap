class Dbterm < Formula
  desc "Keyboard-first database client with backup support"
  homepage "https://dbterm.shreyam1008.com.np/"
  url "https://github.com/shreyam1008/dbterm/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "02c21c77f8dc0189b9d71a78ae59ecca3f2f3c0a1b4d39fbae928a8343a68aea"
  license "MIT"
  head "https://github.com/shreyam1008/dbterm.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build",
      "-trimpath",
      "-buildvcs=false",
      "-ldflags", "-s -w -buildid= -X main.version=#{version}",
      "-o", bin/"dbterm",
      "./cmd/dbterm"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dbterm --version 2>&1")
  end
end

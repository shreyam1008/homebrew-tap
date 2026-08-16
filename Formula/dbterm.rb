class Dbterm < Formula
  desc "Keyboard-first terminal database client for PostgreSQL, MySQL, SQLite, Turso, and Cloudflare D1"
  homepage "https://dbterm.shreyam1008.com.np/"
  url "https://github.com/shreyam1008/dbterm/archive/refs/tags/v0.6.4.tar.gz"
  sha256 "60cbfb64c4ac40a9531119c998cdd902d6da859bbc219aab0ea6b0a7c5501fdb"
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
    assert_match version.to_s, shell_output("#{bin}/dbterm --version 2>&1", 0)
  end
end

class Dbterm < Formula
  desc "Keyboard-first terminal database client for PostgreSQL, MySQL, SQLite, Turso, and Cloudflare D1"
  homepage "https://dbterm.shreyam1008.com.np/"
  url "https://github.com/shreyam1008/dbterm/archive/refs/tags/v0.7.0.tar.gz"
  sha256 "e18266fbdf6bc000b2c05045b8bf6500d4ccdf76089dd6ec7ca73ea3097dcb0c"
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

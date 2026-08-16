class Dbterm < Formula
  desc "Keyboard-first terminal database client for PostgreSQL, MySQL, SQLite, Turso, and Cloudflare D1"
  homepage "https://dbterm.shreyam1008.com.np/"
  url "https://github.com/shreyam1008/dbterm/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "73df2a7db16fec82cf1d8306f74a1c7de881ee1ddde35c7b746df659d55650d2"
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

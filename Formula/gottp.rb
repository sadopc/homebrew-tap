class Gottp < Formula
  desc "A Postman/Insomnia-like TUI API client built in Go"
  homepage "https://github.com/sadopc/gottp"
  license "MIT"
  head "https://github.com/sadopc/gottp.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/serdar/gottp/pkg/version.Version=#{version}
      -X github.com/serdar/gottp/pkg/version.Commit=HEAD
      -X github.com/serdar/gottp/pkg/version.Date=#{time.iso8601}
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/gottp"
  end

  test do
    assert_match "gottp", shell_output("#{bin}/gottp --version")
  end
end

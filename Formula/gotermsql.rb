# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.0/gotermsql_0.5.0_darwin_amd64.tar.gz"
      sha256 "eb7b864a4b3960613855f8700b3b7bc699936386078df0c652a259d4f0513e56"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.0/gotermsql_0.5.0_darwin_arm64.tar.gz"
      sha256 "fd1dd66b58055c7b93f587541dfac81ef9d94d2332abd631460017e5f20a8a89"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.0/gotermsql_0.5.0_linux_amd64.tar.gz"
      sha256 "fe162af1f832326de3ee2d06d7463cacb894562fe11f6a771e2050edfc8b1e6e"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.0/gotermsql_0.5.0_linux_arm64.tar.gz"
      sha256 "31be53540e4c3bcbc189c2604a9d2c3341b8e8b5d97ad6081a74fffc76d6d4a8"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

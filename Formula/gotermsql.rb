# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.1/gotermsql_0.4.1_darwin_amd64.tar.gz"
      sha256 "78504bb1a968fb9bc381071e7699a6fdbd0f98b2afda0679ab3de99b51bb94d2"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.1/gotermsql_0.4.1_darwin_arm64.tar.gz"
      sha256 "d21f4c85ebc558a4e0d566bc15b76052adcd88490875503ea796e1c6535b544e"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.1/gotermsql_0.4.1_linux_amd64.tar.gz"
      sha256 "a019a9d33a1ed210f78df5d7ea73086871c092b2a616e44c8e476bdb4a90b978"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.1/gotermsql_0.4.1_linux_arm64.tar.gz"
      sha256 "d9e83d6ea1baa8e6c21ef5329b6167e348e7a5abbc45279cf9e0022075c8227a"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

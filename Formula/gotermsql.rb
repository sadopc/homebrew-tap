# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_darwin_amd64.tar.gz"
      sha256 "e1229ed2d5210a221f19d312863ce4bba39f0791f17e7ad29c55bb178b586722"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_darwin_arm64.tar.gz"
      sha256 "6ef8714dffad8bdc9267e43a5de94ca970cdd2e0ffc52638c319a2d6517bc687"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_linux_amd64.tar.gz"
      sha256 "c60401035812a6df9d00170bcd263e071e859f19da2bc346d36e4ca12b9f123f"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_linux_arm64.tar.gz"
      sha256 "ae4350ea86916dc182b050970b62ce7b578f8e91607dbc927fe1437a03f95022"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

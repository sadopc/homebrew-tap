# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.2/gotermsql_0.3.2_darwin_amd64.tar.gz"
      sha256 "44ee8ec911d1a9e4abe69f9bf1a75eaab712e752f1bc8d547d78e43057059244"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.2/gotermsql_0.3.2_darwin_arm64.tar.gz"
      sha256 "cbe702deb0c4a194e91e8f33ba85b8a62f8644294eeedbaeb7310c29304b8a60"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.2/gotermsql_0.3.2_linux_amd64.tar.gz"
      sha256 "2c95c46e0086b96c99118cc5422d3292b6c2e0f9acef4b06c8b6a86ea06818f6"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.2/gotermsql_0.3.2_linux_arm64.tar.gz"
      sha256 "ac7fd72d0f8f2c37528a0207a6f4560da1ff81559dd52637fb2b654764b897fd"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

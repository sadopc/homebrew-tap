# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.0/gotermsql_0.4.0_darwin_amd64.tar.gz"
      sha256 "d9d4de93daf6593406f7924b75b5526a48ee749435f866fc6b079de18e4e8f61"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.0/gotermsql_0.4.0_darwin_arm64.tar.gz"
      sha256 "c8fa1277194f62beead343fcef98d9aa7ede25bb6cc38e018801c3e530df5c15"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.0/gotermsql_0.4.0_linux_amd64.tar.gz"
      sha256 "491b80b148e5171ce8917a750ee4af7b7cfcab57b1773e907e399da555d8e598"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.4.0/gotermsql_0.4.0_linux_arm64.tar.gz"
      sha256 "d84722af86a1f59bd697190961d3b9cb7422f64cb2e1f9e5f6f1fc04b0dea0b9"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

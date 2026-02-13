# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.4/gotermsql_0.3.4_darwin_amd64.tar.gz"
      sha256 "feb7f456c00f405d3528659ad942e63ed485116a8d00fe3d13f799dc31de3edf"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.4/gotermsql_0.3.4_darwin_arm64.tar.gz"
      sha256 "2ff0a419180c5b81cdf91e848cb3ac5e3058513baea814fe6c21201f056963ab"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.4/gotermsql_0.3.4_linux_amd64.tar.gz"
      sha256 "e7220413941d4897ef445ef755fb7ddfb273ffa756729ff55a80c012e3bcc5f5"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.4/gotermsql_0.3.4_linux_arm64.tar.gz"
      sha256 "44463cb119beed5775c2f6831e37018c120fe90f015d26dae7cc941cc0c5c515"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

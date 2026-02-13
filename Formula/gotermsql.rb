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
      sha256 "dd5a34a850bc48b2c9a0bb7832aeae0068ffbf79f88bd41a1e0ca264448007ec"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_darwin_arm64.tar.gz"
      sha256 "173f2e95564c2c0cb5c9a2578e78c9b3720b687650f2bdd98ee5f09885555a73"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_linux_amd64.tar.gz"
      sha256 "65404975d072774cfeb5e5fa20cd285ad55ee617156e88d80c5b197434f9a5c0"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.1/gotermsql_0.3.1_linux_arm64.tar.gz"
      sha256 "25b4c1e2cd1be589ad411bd16cad62a851b037da9fb41c4b8823d12da5ed4504"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

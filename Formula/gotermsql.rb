# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.0/gotermsql_0.3.0_darwin_amd64.tar.gz"
      sha256 "4a0c0c0e0accd1461993870c15ca05e6ab6abc97d6087b58c8f4de2f6fede1e9"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.0/gotermsql_0.3.0_darwin_arm64.tar.gz"
      sha256 "89ef611a5ebd69ec62a724e218321399f7f7c34334b095b05ed632cf56c812ed"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.0/gotermsql_0.3.0_linux_amd64.tar.gz"
      sha256 "2c3266774dc43aad7df152edece5b354c07134279268544ba570223bb4abcd63"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.0/gotermsql_0.3.0_linux_arm64.tar.gz"
      sha256 "08a68c2831caadde750fbc996259ef20e500192b0d85668ee1ac6cfd1f7d4f69"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

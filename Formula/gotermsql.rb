# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.1/gotermsql_0.5.1_darwin_amd64.tar.gz"
      sha256 "5a6c077d53f610b058b6eb0ce497d25377cc9b02af160fc9265ac7f4927d2c3e"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.1/gotermsql_0.5.1_darwin_arm64.tar.gz"
      sha256 "3d2344421e39e8a961f49b2215385726abd0efcbde3f29c7c08413434e8805f1"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.1/gotermsql_0.5.1_linux_amd64.tar.gz"
      sha256 "c2b26edd60772b3ff7c7a116db5e8c9d8f68f02726a4c43eaa74fb44a987b47a"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.1/gotermsql_0.5.1_linux_arm64.tar.gz"
      sha256 "7c62fc1d0b0a982394618caa7a74fe33b1a0042feca535804d0f66451554e04d"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

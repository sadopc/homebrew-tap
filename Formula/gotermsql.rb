# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.3/gotermsql_0.3.3_darwin_amd64.tar.gz"
      sha256 "2081decc3be3561de4020d6cf418e1c031673db246deb2c997d8c930726ffd21"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.3/gotermsql_0.3.3_darwin_arm64.tar.gz"
      sha256 "2f3ed8d90cbf8a9f2332ecb5585763fd8613fd777d70e64d64aab758427269e9"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.3/gotermsql_0.3.3_linux_amd64.tar.gz"
      sha256 "52a66663095a11d8bbb2fd3f7f0af2ed233fefd1b2fb76ab0e674c1532d540e2"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.3.3/gotermsql_0.3.3_linux_arm64.tar.gz"
      sha256 "355443061b7f7493e5d3bf9512ceba9f3ea0e85f7d4b5d11e89f6ff55a2f0d5c"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

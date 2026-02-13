# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.2.0/gotermsql_0.2.0_darwin_amd64.tar.gz"
      sha256 "fad18667c49303be695fd09c46f8b4735be4cb0ec2db5a2d8588ff92b5d26a71"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.2.0/gotermsql_0.2.0_darwin_arm64.tar.gz"
      sha256 "c4f516be589dc8d6b1b380fcb64ca8351e6a5fb89b1f4b9bdfbcff333e6b342d"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.2.0/gotermsql_0.2.0_linux_amd64.tar.gz"
      sha256 "115bf1a3b7846cf21f710a5380e037c2f6f0e78d7b1029fc0fe7d405bbdc6aec"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.2.0/gotermsql_0.2.0_linux_arm64.tar.gz"
      sha256 "64f47ed945966b8b9f1e51b16bcc0de0abf3c0034bb257d8057998032811285a"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

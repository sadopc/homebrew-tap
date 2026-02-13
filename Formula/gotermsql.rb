# typed: false
# frozen_string_literal: true

class Gotermsql < Formula
  desc "A terminal SQL IDE supporting PostgreSQL, MySQL, SQLite, and DuckDB"
  homepage "https://github.com/sadopc/gotermsql"
  version "0.5.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.2/gotermsql_0.5.2_darwin_amd64.tar.gz"
      sha256 "a5e2754aa5eeafd11a044dc6e3a97864e89d7c7e588ee072fa69738e8b42a071"

      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.2/gotermsql_0.5.2_darwin_arm64.tar.gz"
      sha256 "bf430bf34eea62aeccac970b57c98c10e33500218c731635b77a9e719b522095"

      def install
        bin.install "gotermsql"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.2/gotermsql_0.5.2_linux_amd64.tar.gz"
      sha256 "5235eee73ea5c4a15b2280d7671666060a0dddb05f6d2fede98f62cc194d2f9c"
      def install
        bin.install "gotermsql"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/sadopc/gotermsql/releases/download/v0.5.2/gotermsql_0.5.2_linux_arm64.tar.gz"
      sha256 "101dbe96bd408d62be899d464e36030430422b2d65be1794211050bf6ae1867d"
      def install
        bin.install "gotermsql"
      end
    end
  end

  test do
    system "#{bin}/gotermsql", "version"
  end
end

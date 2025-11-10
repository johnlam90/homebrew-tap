# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.6.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "5714f6d78491321897d6e2c25aaef4a003c1d262956f21b1596992747af35f45"
      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.6.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "f35e1e3e1281b8908addcde11e5045d816083c564b5ba1fe5cf206f40119a973"
      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.6.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "e090e699b5a49e1bb6032a90b38ee3f6956d61bcf8e1075a613dc65888491d74"
      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.6.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "7b951f903d2587886830218e1f26c2e19c6705f5f8691d2b773ed05af5551afb"
      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "
      \#{bin}/aws-ssm", "version"
  end
end

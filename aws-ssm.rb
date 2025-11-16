# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "7c4d17b2c1ea1672e24b92f5558c43e91f1671b5efb938d246c63a16c969f23b"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "b7145f2ef36982cccf9e2817484b3e48b6309ffa86b1d592b60e6477368de258"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "20cc0baa59e17fe9a73c50c308df8442878c975c88ab7ddc1ac1a15e5e25b86d"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "feb08c4e10df84b0bb2c7b084a847fe1621997b61970d53d6e6fabbc478281aa"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

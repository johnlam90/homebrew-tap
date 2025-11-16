# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.1/aws-ssm-darwin-amd64.tar.gz"
      sha256 "03e609035f17ea7510f5c00a798b9eb9c0ee530d7d3cbd01cc51cea043b83a12"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.1/aws-ssm-darwin-arm64.tar.gz"
      sha256 "b1bfd31e41f6a2d3615cb07fdd8e04ff5570c1f67184f42dcd38757131575381"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.1/aws-ssm-linux-amd64.tar.gz"
      sha256 "7a4a0cc8cad728a2bedb0ea0e4e0804c54bd7e4fd94cdfdd21147e244b45a90b"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v1.0.1/aws-ssm-linux-arm64.tar.gz"
      sha256 "13f8e42729ab0d6d71583fc1fb60a0e52d230fb28c5b9d1b851927f2b6619e18"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

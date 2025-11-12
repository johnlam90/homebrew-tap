# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "235960621937152788dc172500afa3430f04cbbe200cfe0d8e3e8f3d3853e255"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "76617b22845e35d8251cc66eb7caa3dcf7dca6071682a6f7f3813445014e1f92"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "c459226f347229833eb7027219eab12c94db7d31193a4e665e37d686294a522b"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "42f6f71e7e1b2332773ea42de95afa733988c87c93d040fa6e24b28faa118504"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

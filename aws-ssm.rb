# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.2/aws-ssm-darwin-amd64.tar.gz"
      sha256 "a8697d5b0e4f5b0cc8d642f0fedf3e75d4ade3d018976530eb113d3665801692"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.2/aws-ssm-darwin-arm64.tar.gz"
      sha256 "6a04a19e6e03326afbb6f0ce4bbaeabc7b648dee8c049e02cb64c06d6c00bb88"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.2/aws-ssm-linux-amd64.tar.gz"
      sha256 "338d5ab11d857b74fc0ad57c6434ee2cd88e4c457eb0478b19c3bf6fdff687b2"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.2/aws-ssm-linux-arm64.tar.gz"
      sha256 "e4f336a7a50adfab95326786640e1d1c0dee135c9f52823b5c28e2ff9c4b93ba"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

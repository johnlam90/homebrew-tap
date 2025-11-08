# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.2.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "4c162f533256139ea0c592c8f67066e8f602bd721b99bbc0b99b378dbcd765ea"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.2.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "587c75a75e3cd19ed489391bd0c5127cdc08be5db78773d8142f9f78b5d51017"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.2.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "c19f97677aa8cb3147f120e79611e37cfa0408513b46bf33ec8cb8861c09a837"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.2.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "ff233a74301465e1c7605aa6fce1d553d9639a781a1d27321762ecc7a69f680f"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.7.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "d3b6e74f9254b2961df2f3cb7e6ba1c9290af3d5312564302570b70a1a1c2da1"
      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.7.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "231ce6db88386a5dafb54c4c234384d3bbb7a8e9cc7e0172b6809391348f5a00"
      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.7.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "267b1c03398a8a6b743244d7cbf65440d0fc42d520261eedcd8ee2b37044f74a"
      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.7.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "54f411a58fa738ab89150dd57c7c9c628b76751eb7e5f580cef41cfed0d144a1"
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

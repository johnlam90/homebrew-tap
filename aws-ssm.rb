# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.8.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.1/aws-ssm-darwin-amd64.tar.gz"
      sha256 "859dd5dd296e6fc876d2089833778a640308995b7fb806cd2cf5313ba3007af0"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.1/aws-ssm-darwin-arm64.tar.gz"
      sha256 "ac341680432866454402d0e2bf376e19c2256e4b10750c9acec1bf9ce5a2ddbc"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.1/aws-ssm-linux-amd64.tar.gz"
      sha256 "53786e8986ea47b79c2587082930f459833d6f903534ab92bfa8f63d15a9e839"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.8.1/aws-ssm-linux-arm64.tar.gz"
      sha256 "11d6626c8087f6aaae6ebc055144cbdea86abbc89cedf5d1fa7eff73c485174c"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

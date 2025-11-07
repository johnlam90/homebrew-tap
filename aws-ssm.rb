# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.1/aws-ssm-darwin-amd64.tar.gz"
      sha256 "a880e05f770d98496b35bdfc2eaa7a0d1408b952405f9c862236b749a6f2f925"

      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.1/aws-ssm-darwin-arm64.tar.gz"
      sha256 "e9739fa7322e794b3531b866c28317de8aaa9d426096a265ab26a681dc51f404"

      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.1/aws-ssm-linux-amd64.tar.gz"
      sha256 "2a13815fca8eeffd9c063097296f75f7e03c0ff6ddf618096a8beca83c3be0a1"

      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end

    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.1.1/aws-ssm-linux-arm64.tar.gz"
      sha256 "7c637fc974eda493c3dcdf0df90c9ca39e285c60d6dc7e6568c68cc440b00de5"

      def install
        bin.install "aws-ssm-linux-arm64" => "aws-ssm"
      end
    end
  end

  test do
    system "#{bin}/aws-ssm", "version"
  end
end

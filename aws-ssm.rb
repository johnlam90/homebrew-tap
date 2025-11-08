# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.3.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "bf891b0c750a5daa5561dd0eb188c3dfa8433c084aa508e3c54f56cfd1e531ef"
      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.3.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "2601a0bebfa227d158956690b006199eb4da252681966c3bc322ac28e277f7ea"
      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.3.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "df63a5e7aec4c8381d19a815090900d12ae5f4fae518986536527ab770a8a9f7"
      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.3.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "bdf877edc00d999bd914b8f7eb5f01d2ad2146956c3ccfda62abe8a90f230df8"
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

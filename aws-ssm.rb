# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.4.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "e36b6f8d86a9ea2d3f4da7b9ce53df13d350ee72771f26541c10f85281eaa191"
      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.4.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "74266ebfd4174bb578850403db0607940b09d198b29232fe5b2cf9c25051393b"
      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.4.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "8caef30482cd0a4195a5b251a54399f915ddd2ac12ea6ede91a53ac3b97531bc"
      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.4.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "d06ff69db926c4cbabe9ad8f9e6bca9a3a4c4a9263e28e2dc25c28645f1ef336"
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

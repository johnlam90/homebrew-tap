# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.9.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.9.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "f84c76c4a28de8dba17a809d18bc674b0366af063f4a64543e60c79cb6bbc507"
      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.9.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "624ec2faf02b3d46a361433c57012c349c9d4f04796a6ccb365b6f5c66c16868"
      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.9.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "8b031e44b13cfd13ab83e209ff8dcb9b43eb58206bdfceded12f15d8fff305fa"
      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.9.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "bf5700319e3b807d0697790673a83f6a86ad82645b8ab320b8e2048698408322"
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

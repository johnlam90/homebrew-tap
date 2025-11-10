# typed: false
# frozen_string_literal: true

class AwsSsm < Formula
  desc "Native Golang CLI tool for managing AWS SSM sessions"
  homepage "https://github.com/johnlam90/aws-ssm"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.5.0/aws-ssm-darwin-amd64.tar.gz"
      sha256 "ed4db1d98af28b4a831b01ac120e03164dcc3c16702fd2226758d364aa7df488"
      def install
        bin.install "aws-ssm-darwin-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.5.0/aws-ssm-darwin-arm64.tar.gz"
      sha256 "0a610df82ccdb9ee9cef8230812b839193dc7b49305d28ae029718f147b7088f"
      def install
        bin.install "aws-ssm-darwin-arm64" => "aws-ssm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.5.0/aws-ssm-linux-amd64.tar.gz"
      sha256 "77f568775de0f2e377a3affb9240ca4b106606a6717f3421170ba67723aa54f2"
      def install
        bin.install "aws-ssm-linux-amd64" => "aws-ssm"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/johnlam90/aws-ssm/releases/download/v0.5.0/aws-ssm-linux-arm64.tar.gz"
      sha256 "a0684473014c0254f3daead00d8191a1712216ead84f82fa8f85eecd8a42811f"
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

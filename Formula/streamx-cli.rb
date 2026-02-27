# Generated with JReleaser 1.22.0 at 2026-02-27T11:16:59.839084287Z

class StreamxCli < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.6"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/v0.0.6/streamx-cli-0.0.6-linux-x86_64.zip"
    sha256 "01ae4fdc5b1a25791549887c9c58636cd853442a97798eb617b21d965032c4b0"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx-cli" => "streamx-cli"
  end

  test do
    output = shell_output("#{bin}/streamx-cli --version")
    assert_match "0.0.6", output
  end
end

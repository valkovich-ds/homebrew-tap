# Generated with JReleaser 1.22.0 at 2026-03-08T07:32:58.332919655Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.49"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49/streamx-0.0.49-linux-aarch64.zip"
    sha256 "ce64fe4cf8f004c78925cb0616986203771e416b473a1d81fa7b0c8e926c1be3"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49/streamx-0.0.49-linux-x86_64.zip"
    sha256 "8534abfea2c076525eea6dffcef233b5579539b01652a517c3b678ce61160582"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49/streamx-0.0.49-macos-aarch64.zip"
    sha256 "2cfbc18bfd62a2b932d7b1e4ac985f77366c96ab7ed66de56f9f77b65898f6e1"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49/streamx-0.0.49-macos-x86_64.zip"
    sha256 "a4cd7b7d65bf0eba7421eb148c9fa9a24af765a933e7cc4f5c66973f852aeb33"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.49", output
  end
end

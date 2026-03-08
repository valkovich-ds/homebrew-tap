# Generated with JReleaser 1.22.0 at 2026-03-08T13:43:57.947698764Z

class StreamxAT0053 < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.53"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53/streamx-0.0.53-linux-aarch64.zip"
    sha256 "1b236f0e0d65ca2d251e9bf46b38053aaf49c0eb9129ac519b4d57e310a29aac"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53/streamx-0.0.53-linux-x86_64.zip"
    sha256 "b48ba0b093c5aa596a532239409b6a921a8c8b75791593480ba42976dca2a0bc"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53/streamx-0.0.53-macos-aarch64.zip"
    sha256 "d2bc5091c1fc3c5e71d3c1a9c8aebf010bf4f6d795dd50c70bcaceaaa8434656"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53/streamx-0.0.53-macos-x86_64.zip"
    sha256 "37e18eab2cb21a1120f3d115ded9545c728a2778c520c3981748854f2e947a6e"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.53", output
  end
end

# Generated with JReleaser 1.22.0 at 2026-03-08T14:15:47.299825898Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.54-rc.1.2ae03a4"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.1.2ae03a4/streamx-0.0.54-rc.1.2ae03a4-linux-aarch64.zip"
    sha256 "f67b5386e6982ad8d04503fede5454ff2c5710e0746b1f2eb00e0401e84777ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.1.2ae03a4/streamx-0.0.54-rc.1.2ae03a4-linux-x86_64.zip"
    sha256 "a6dd5364e79f3b704b421baeac3d4312974819a221ec37d75bcd293c1c834673"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.1.2ae03a4/streamx-0.0.54-rc.1.2ae03a4-macos-aarch64.zip"
    sha256 "c446bb932d03de40b903d2cab47f587d421d004e0cc9162a68282b1ea5122aad"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.54-rc.1.2ae03a4/streamx-0.0.54-rc.1.2ae03a4-macos-x86_64.zip"
    sha256 "6f8e071080c86a56392c119535f436209b1ae3c17224b7bb59b3a18fd62ec41d"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.54-rc.1.2ae03a4", output
  end
end

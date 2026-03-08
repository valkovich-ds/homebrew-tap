# Generated with JReleaser 1.22.0 at 2026-03-08T08:51:52.30686973Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.52-rc.1.e611466"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.1.e611466/streamx-0.0.52-rc.1.e611466-linux-aarch64.zip"
    sha256 "7ff373462c03e94fc67f88ce75a9e74e635e4fed3bf77eec017f5ac6e6e275fb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.1.e611466/streamx-0.0.52-rc.1.e611466-linux-x86_64.zip"
    sha256 "606195255f8f99d58f7c2efc9d7251630151ad9f3e95afd27e914defb0774e30"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.1.e611466/streamx-0.0.52-rc.1.e611466-macos-aarch64.zip"
    sha256 "70119edfc853ddb8bee285dd724ae7fcb169ea582aed1106bc019a906ceb3395"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.52-rc.1.e611466/streamx-0.0.52-rc.1.e611466-macos-x86_64.zip"
    sha256 "ddc6d6599066bab989c140cd483424fa2b0431ea0a65f5961687c98aa266dc80"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.52-rc.1.e611466", output
  end
end

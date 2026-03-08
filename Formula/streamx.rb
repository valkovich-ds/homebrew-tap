# Generated with JReleaser 1.22.0 at 2026-03-08T13:43:13.623847673Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.53-rc.1.afcf19f"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.1.afcf19f/streamx-0.0.53-rc.1.afcf19f-linux-aarch64.zip"
    sha256 "5d1c7abcf131bf44342166b72d23ae5995bcfdbbc352d344102b913a0eb950f7"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.1.afcf19f/streamx-0.0.53-rc.1.afcf19f-linux-x86_64.zip"
    sha256 "5c58918fe235ec7c6fd8b008bc7074228c2fc0fa1a655c3e8f105678ae470bff"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.1.afcf19f/streamx-0.0.53-rc.1.afcf19f-macos-aarch64.zip"
    sha256 "34b67e3320f9f783429dca57681280eb0a4877ae524a6ed0b4a25384d32bb134"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.53-rc.1.afcf19f/streamx-0.0.53-rc.1.afcf19f-macos-x86_64.zip"
    sha256 "135ec5394c815eba524b42df056cc29370dd21830a6e19046666a581978e88ac"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.53-rc.1.afcf19f", output
  end
end

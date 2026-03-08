# Generated with JReleaser 1.22.0 at 2026-03-08T08:56:57.756423909Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.51"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.51/streamx-0.0.51-linux-aarch64.zip"
    sha256 "a8c0962dfff6e9922f2d734da4533c17573302e618cca4c9a5c83e8a8874e059"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.51/streamx-0.0.51-linux-x86_64.zip"
    sha256 "4de8c731b3609d6fae36ebbefe6e06491b59452cbee30ec9ed4a25f51bbcdc97"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.51/streamx-0.0.51-macos-aarch64.zip"
    sha256 "2c169f50d3e63ad9fe7ea159d44458190829d4dd79a4eee3591d60fffe5b28ea"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.51/streamx-0.0.51-macos-x86_64.zip"
    sha256 "5b73823ef0d3b27304e3a12465d25da4a82a9fadac3e87c6feeb44d91d8ae9c9"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.51", output
  end
end

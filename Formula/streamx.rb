# Generated with JReleaser 1.22.0 at 2026-03-08T06:42:02.051539055Z

class Streamx < Formula
  desc "StreamX CLI"
  homepage "https://github.com/streamx-com/streamx-cli"
  version "0.0.49-rc.1"
  license "LicenseRef-StreamX"

  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49-rc.1/streamx-0.0.49-rc.1-linux-aarch64.zip"
    sha256 "dbdcb43e7cf4f3fbd36465332db57818e322f2e6cfd0bbe5428e89f9cc3069ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49-rc.1/streamx-0.0.49-rc.1-linux-x86_64.zip"
    sha256 "f897751a31d48fab430a971c00f9c91751c36f7b6654b670a85a9ae9974bcf0f"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49-rc.1/streamx-0.0.49-rc.1-macos-aarch64.zip"
    sha256 "44d881d1fc72e709ebcc7fdac4130abd006a813006bd0bf198aa4222a699a038"
  end
  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/streamx-com/streamx-cli/releases/download/0.0.49-rc.1/streamx-0.0.49-rc.1-macos-x86_64.zip"
    sha256 "26a26cb8bc61ddac7f0fe56322911ef690268a69ba12ae6c20975e6485fb5830"
  end


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/streamx" => "streamx"
  end

  test do
    output = shell_output("#{bin}/streamx --version")
    assert_match "0.0.49-rc.1", output
  end
end
